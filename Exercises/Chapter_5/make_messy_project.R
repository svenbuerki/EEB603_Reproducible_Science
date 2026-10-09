###~~~
# Build the deliberately mismanaged project folder used by the group activity
# in Chapter 5 - PART A (see "You Have Just Inherited This Project").
#
# EVERYTHING THIS SCRIPT WRITES IS SYNTHETIC. The measurements, the site
# coordinates, the landowner names and the phone numbers are all invented for
# teaching purposes. No real person, landowner or population is described here.
#
# Every defect is planted on purpose and belongs to exactly one of the four
# failure classes the four pairs are assigned in class:
#
#   Pair 1  file naming and organisation
#   Pair 2  formats and atomisation
#   Pair 3  documentation and metadata
#   Pair 4  preservation and sharing
#
# Re-run this script to regenerate the folder and the zip students download:
#   Rscript Exercises/Chapter_5/make_messy_project.R
###~~~
stopifnot(requireNamespace("openxlsx", quietly = TRUE))

root <- "Exercises/Chapter_5/Messy_Project"
if (dir.exists(root)) unlink(root, recursive = TRUE)
dir.create(root, recursive = TRUE)   # flat on purpose: no Data/, no R/, no Figures/

###~~~
# The main dataset. Written as a character matrix so that the planted defects
# survive: a non-atomic cell, four different missing-value codes, three date
# formats, units inside values, a decimal comma and non-ASCII characters.
###~~~
hdr <- c("V1", "x2", "temp", "trt", "mass", "biomass_index", "notes")
dat <- rbind(
  c("1",  "3/12/25",     "25°C",   "1", "12.5 g",       "0.84", "ok"),
  c("2",  "3/12/25",     "25",     "1", "11,8",         "0.79", ""),
  c("3",  "3/12/25",     "25",     "2", "12.5 g, male", "0.84", "scale odd"),
  c("4",  "12.03.2025",  "24.5",   "2", "-999",         "-999", "not measured"),
  c("5",  "12.03.2025",  "24.5",   "3", "9.2",          "0.61", ""),
  c("6",  "March 12",    "n/a",    "3", "NA",           ".",    "juvenile?"),
  c("7",  "3/19/25",     "22±0.5", "1", "10.4",         "0.70", "redid site 2"),
  c("8",  "3/19/25",     "22",     "1", "unknown",      "",     ""),
  c("9",  "3/19/25",     "22",     "2", "1,250",        "0.83", "see Müller notes"),
  c("10", "3/19/25",     ".",      "2", "10.9",         "0.73", "“big one”"),
  c("11", "3/19/25",     "22",     "3", "8.7",          "0.58", ""),
  c("12", "3/19/25",     "22",     "3", "",             "0.62", "lost tag")
)

###~~~
# Pair 2's headline defect: the master copy is a proprietary .xlsx with a
# title row above the column names, so the file cannot be read with
# read.csv() and the header is not on the first row.
###~~~
sheet <- rbind(
  c("Site 1 data, collected by SB/MR", rep("", length(hdr) - 1)),
  hdr,
  dat)
openxlsx::write.xlsx(as.data.frame(sheet, stringsAsFactors = FALSE),
                     file.path(root, "Data final v2 FINAL.xlsx"),
                     colNames = FALSE, overwrite = TRUE)

###~~~
# Pair 1's headline defect: a near-duplicate under a different name, differing
# in two rows, with nothing to say which of the two is the master copy.
###~~~
dup <- dat
dup[3, 5] <- "12.5"      # someone silently "fixed" the non-atomic cell here
dup[8, 5] <- "10.2"      # ...and guessed at the unknown mass
# Values are quoted so that the file still parses: the decimal comma in "11,8"
# and the comma inside "12.5 g, male" survive as defects in the DATA rather
# than breaking read.csv() outright, which would stall the diagnosis.
write.table(rbind(hdr, dup), file.path(root, "copy of data(1).csv"),
            sep = ",", row.names = FALSE, col.names = FALSE, quote = TRUE)

###~~~
# A third version of the same thing, named with an ambiguous date and spaces.
###~~~
write.table(rbind(hdr, dat[1:6, , drop = FALSE]),
            file.path(root, "plot data 12-03-25.csv"),
            sep = ",", row.names = FALSE, col.names = FALSE, quote = TRUE)

###~~~
# Pair 4's headline defect: personal information and the exact coordinates of
# a listed species, sitting in the same folder as everything else, with no
# access restriction and nothing recording that it must not be shared.
# All names are placeholders and all numbers are invented.
###~~~
sites <- data.frame(
  site = 1:3,
  landowner_name = c("J. Doe", "A. Roe", "R. Poe"),
  phone = c("208-555-0101", "208-555-0102", "208-555-0103"),
  latitude = c(43.61234, 43.61902, 43.62455),
  longitude = c(-116.20345, -116.21011, -116.19887),
  species = "Lepidium papilliferum",
  federal_status = "Threatened",
  stringsAsFactors = FALSE)
write.csv(sites, file.path(root, "sites_landowners.csv"), row.names = FALSE)

###~~~
# Pair 3's headline defect: the only documentation is a private shorthand
# note. The missing-value code, the instrument problem and the identity of the
# treatments are all in here, where no reader would look, and the treatment
# key is not written down at all.
###~~~
writeLines(c(
  "3/12 - usual spot, got 12 inds",
  "some were small, prob juveniles, didnt record which",
  "scale was acting up in the morning so the first few are off by a bit",
  "trt as agreed w/ SB",
  "redid site 2 the following week because of the rain",
  "-999 = didnt measure",
  "check w/ Maria about the second batch before using it",
  "biomass_index calculated in the spreadsheet"
), file.path(root, "notes.txt"))

###~~~
# Three scripts, no indication which one produced the results. The one that
# looks authoritative reads the duplicate rather than the master, hard-codes
# an absolute path, silently coerces "12.5 g" to NA, and treats a categorical
# treatment as a number.
###~~~
writeLines(c(
  'd <- read.csv("copy of data(1).csv")',
  "plot(d$trt, d$mass)"
), file.path(root, "analysis.R"))

writeLines(c(
  'setwd("/Users/jdoe/Desktop/stuff/Messy_Project")',
  'd <- read.csv("copy of data(1).csv")',
  "d$mass <- as.numeric(d$mass)",
  "m <- lm(mass ~ trt, data = d)",
  "summary(m)"
), file.path(root, "analysis2.R"))

writeLines(c(
  'setwd("/Users/jdoe/Desktop/stuff/Messy_Project")',
  'd <- read.csv("copy of data(1).csv")',
  "d$mass <- as.numeric(d$mass)",
  "d$biomass_index <- as.numeric(d$biomass_index)",
  "m <- lm(mass ~ trt + temp, data = d)",
  "summary(m)",
  "# final numbers for the paper came from this one I think",
  "write.csv(d, \"copy of data(1).csv\", row.names = FALSE)   # overwrites the input"
), file.path(root, "analysis_USE THIS ONE.R"))

###~~~
# No README.md, no LICENSE, no data dictionary and no changelog: their absence
# is itself the thing the students are meant to notice.
###~~~
zipfile <- "Exercises/Chapter_5/Messy_Project.zip"
if (file.exists(zipfile)) unlink(zipfile)
owd <- setwd("Exercises/Chapter_5")
utils::zip("Messy_Project.zip", "Messy_Project", flags = "-rq")
setwd(owd)

cat("Messy_Project/ written:\n")
print(list.files(root))
cat("\nzip:", zipfile, "\n")

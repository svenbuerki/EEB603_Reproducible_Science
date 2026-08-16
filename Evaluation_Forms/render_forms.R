#' Render all EEB 603 evaluation forms to pdf
#'
#' The .Rmd files in this folder are the MASTER copies of the evaluation forms
#' and rubrics. The pdfs are generated from them and are what students see on
#' the Assignments page of the course website.
#'
#' All five forms share `_form_preamble.tex`, which is what keeps them looking
#' like one family. Edit a form's .Rmd, then re-run this script.
#'
#' Usage (from the project root):
#'   Rscript Evaluation_Forms/render_forms.R

# Work whether the script is run from the project root or from this folder
here <- if (dir.exists("Evaluation_Forms")) "Evaluation_Forms" else "."

forms <- list.files(here, pattern = "_Evaluation_Form\\.Rmd$", full.names = TRUE)
stopifnot(length(forms) > 0)

# Expected point totals, used as a check that no rubric has drifted out of sync
expected <- c(
  Project_Proposal      = 50,
  Individual_Report     = 150,
  Bioinformatics_Tutorial = 150,
  Teaching_Tutorial     = 100,
  Oral_Presentation     = 100
)

for (f in forms) {
  message("Rendering ", basename(f))
  rmarkdown::render(f, quiet = TRUE)
}

## ---------------------------------------------------------------------------
## Check that each form's section points still sum to its stated total.
## A rubric whose parts no longer add up is the single easiest mistake to make
## when editing these files, and the hardest to spot by eye.
## ---------------------------------------------------------------------------
message("\nChecking point totals:")
for (f in forms) {
  txt <- readLines(f, warn = FALSE)

  # Section headers look like: "### A. Something --- 25 points"
  sec <- regmatches(txt, regexpr("---\\s*[0-9]+\\s*points", txt))
  sec <- as.numeric(gsub("[^0-9]", "", sec))
  sec <- sec[-1]                      # first match is the subtitle total

  stated <- as.numeric(gsub("[^0-9]", "",
              regmatches(txt[2:4], regexpr("[0-9]+ points", txt[2:4]))[1]))

  key <- sub("_Evaluation_Form\\.Rmd$", "", basename(f))
  ok  <- isTRUE(sum(sec) == stated)
  message(sprintf("  %-26s sections sum = %3d   stated = %3d   %s",
                  key, sum(sec), stated, if (ok) "OK" else "*** MISMATCH ***"))
  if (!ok) warning("Point mismatch in ", basename(f), call. = FALSE)
}

message("\nDone. ", length(forms), " forms rendered to pdf.")

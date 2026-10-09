setwd("/Users/jdoe/Desktop/stuff/Messy_Project")
d <- read.csv("copy of data(1).csv")
d$mass <- as.numeric(d$mass)
d$biomass_index <- as.numeric(d$biomass_index)
m <- lm(mass ~ trt + temp, data = d)
summary(m)
# final numbers for the paper came from this one I think
write.csv(d, "copy of data(1).csv", row.names = FALSE)   # overwrites the input

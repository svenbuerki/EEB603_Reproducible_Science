####
# Obj.: Install and load CRAN R packages for Chapter 1 - part B
###

##~~
# 1. Provide vector w/ all CRAN R packages
##~~
#Object (input) provided by user with names of packages stored into a vector
pkg <- c("knitr", "rmarkdown", "bookdown", "formattable", "kableExtra", "dplyr", "magrittr", "prettydoc", "htmltools", "knitcitations", "bibtex", "devtools")

##~~
# 2. Check if CRAN R packages are already installed
##~~

#This line outputs a list of packages that are not installed
new.pkg <- pkg[!(pkg %in% installed.packages())]

##~~
# 3. Install missing CRAN R packages
##~~
if(length(new.pkg) > 0){
  print(paste("Install missing package(s):", new.pkg, sep=' '))
  install.packages(new.pkg, dependencies = TRUE)
}else{
  print("All packages are already installed!")
}

##~~
# 4. Load all CRAN R packages and return status
##~~
print("Load packages and return status")
#Here we use the sapply() function to require all the packages
sapply(pkg, require, character.only = TRUE)



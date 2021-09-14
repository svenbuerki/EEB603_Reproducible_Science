##########
#FUNCTION#
##########
# A user-made function to check, install and require multiple R packages
# Argument:
# - pkg: a vector containing names of R packages
check.install.pkg <- function(pkg){
  #Task 1: Check if pkg are installed
  print("Check if packages are installed")
  new.pkg <- pkg[!(pkg %in% installed.packages())]
  #Task 2: Install missing packages
  if(length(new.pkg)){
    print("Install missing packages")
    install.packages(new.pkg, dependencies = TRUE)
  }
  #Task 3: Load all packages
  print("Load packages")
  sapply(pkg, require, character.only = TRUE)
}
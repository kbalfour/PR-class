# START OF SCRIPT -------------------------------------------------------------

# FILE INFORMATION ------------------------------------------------------------
## Living Data Project --- Productivity and Reproducibility
## Author --- Kelly Cheyanne Balfour
## Date --- September 23rd, 2024
## Course Assignment --- Week 04 - Final project (2024)
# -----------------------------------------------------------------------------

# DATABASE INFORMATION --------------------------------------------------------
## Database name: The Long Term Ecological Research (LTER) Program Network
## Database information: https://cran.r-project.org/web/packages/lterdatasampler/readme/README.html
## Date retrieved: September 20th, 2024
## Data set: "hbr_maples"
## Ownership: (1) Stephanie Juice (Cornell University), 
##            (2) Tim Fahey (Cornell University) 
# -----------------------------------------------------------------------------

# SET-UP ----------------------------------------------------------------------
# Install and load packages required:
install.packages("ggplot2")
library("ggplot2")
# NOTE: If you've updated RStudio recently, remember to update your version of
# R and rtools as well!

# Set the working directory to the main project directory "PR-class":
setwd("~/PR-class")
# You can also do this manually

# Load the "maples.data.csv" file created previously from the "00_rawdata"
# folder to a data matrix:
maples.data<-read.csv("./00_rawdata/Balfour_PR-class_raw-data_00.csv")

# Complete independent t-tests for each trait, which will be written into one
# data matrix:
t.tests<-list()
# Stem length
t.tests[[1]]<-t.test(stem_length~watershed, var.equal=TRUE, data=maples.data)
# Leaf area
t.tests[[2]]<-t.test(leaf1area~watershed, var.equal=TRUE, data=maples.data)
# Leaf dry mass
t.tests[[3]]<-t.test(leaf_dry_mass~watershed, var.equal=TRUE, data=maples.data)
# Stem dry mass
t.tests[[4]]<-t.test(stem_dry_mass~watershed, var.equal=TRUE, data=maples.data)

# Extract the relevant statistics from these t-tests and place into one matrix:
table1.ttests<-t(sapply(t.tests, function(x) {
  c(x$estimate[1], x$estimate[2], ci.lower = x$conf.int[1], 
    ci.upper = x$conf.int[2], x$statistic[1], x$parameter[1],
    p.value = x$p.value)
}))
# Rename the columns to the traits used for each t-test:
colnames(table1.ttests)<-c("Stem length","Leaf area","Leaf dry_mass",
                           "Stem dry_mass")
# And rename the rows, to be more concise:
rownames(table1.ttests)<-c("Mean (reference)", "Mean (W1)", "Lower CI",
                           "Upper CI", "t value", "df", "p value")

# View the table of t-test results:
table1.ttests

# END OF SCRIPT----------------------------------------------------------------
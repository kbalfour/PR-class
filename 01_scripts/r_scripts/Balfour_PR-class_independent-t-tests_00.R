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
install.packages("tidyverse", "ggplot2", "dplyr")
library("tidyverse", "ggplot2", "dplyr")

# Set the working directory:
setwd("C://Users/kelly/Documents/PR-class/")

# Load the "maples.data.csv" file created previously from the "00_rawdata"
# folder to a data matrix:
maples.data <- read_csv("./00_rawdata/Balfour_PR-class_raw-data_00.csv")

#Complete independent t-tests for each trait:
#Stem length
t.test (stem_length ~ watershed, var.equal=TRUE, data = maples.data)
#Reference mean = 82.59888, W1 mean = 91.09611 (t(357)=-5.4588, p<0.05)
#Leaf area
t.test (leaf1area ~ watershed, var.equal=TRUE, data = maples.data)
#Reference mean = 9.47105, W1 mean = 14.12907 (t(238)=-10.854, p<0.05)
#Leaf dry mass
t.test (leaf_dry_mass ~ watershed, var.equal=TRUE, data = maples.data)
#Reference mean = 0.04953296, W1 mean = 0.07774333 (t(357)=-8.0459, p<0.05)
#Stem dry mass
t.test (stem_dry_mass ~ watershed, var.equal=TRUE, data = maples.data)
#Reference mean = 0.03676592, W1 mean = 0.05331278 (t(357)=-5.4465, p<0.05)

# END OF SCRIPT----------------------------------------------------------------

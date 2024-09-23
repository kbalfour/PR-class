# START OF SCRIPT -------------------------------------------------------------

# FILE INFORMATION ------------------------------------------------------------
## Living Data Project --- Productivity and Reproducibility
## Author --- Kelly Cheyanne Balfour
## Date --- September 20th, 2024
## Course Assignment --- Week 02 - OSF hub project + scripts (2024)
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
install.packages("lterdatasampler")
library("lterdatasampler")

# From the package "lterdatasampler", we will be saving the dataset "hbr_maple"
# to a .csv file in the "00_rawdata" folder in the project directory.

# Set the working directory to the "00_rawdata" folder directly:
setwd("C://Users/kelly/Documents/PR-class/00_rawdata")
# Or manually:
setwd()

# Acquire the "hbr_maples" dataset, and load these data to a data matrix
# called "maples.data":
maples.data <- lterdatasampler::hbr_maples
# Save these data as a .csv file called "mapledata.csv" in the "00_rawdata"
# folder:
write.table(maples.data, file = "Balfour_PR-class_raw-data_00.csv", append = F, quote = F, 
            sep = ",", dec = ".", col.names = T, row.names = F)

# Now, the csv file can be found in our computer directory!

# END OF SCRIPT ---------------------------------------------------------------

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

# Set the working directory to the main project directory "PR-class":
setwd("~/PR-class")
# You can also do this manually

# Load the "maples.data.csv" file created previously from the "00_rawdata"
# folder to a data matrix:
maples.data<-read.csv("./00_rawdata/Balfour_PR-class_raw-data_00.csv")

# Now set the working directory to the "03_figs" folder in the project
# directory, where we will save # copies of the plots produced below (our
# manuscript figures):
setwd("./03_figs")

# Create box plots for each trait and export the plots as .jpeg files:

# Figure 1: a boxplot of the mean stem lengths exhibited in each watershed
# (reference and W1):
ggplot(data=maples.data, aes(x=watershed, y=stem_length, fill=watershed)) +
  geom_boxplot() + ggtitle("Maple stem lengths in watersheds")
dev.copy(jpeg,'Balfour_PR-class_figure1_stem-length_00.png')
dev.off()

# Figure 2: a boxplot of the mean leaf areas exhibited in each watershed 
# (reference and W1):
ggplot(data=maples.data, aes(x=watershed, y=leaf1area, fill=watershed)) +
  geom_boxplot() + ggtitle("Maple leaf areas in watersheds")
dev.copy(jpeg,'Balfour_PR-class_figure2_leaf-area_00.png')
dev.off()

# Figure 3: a boxplot of the mean leaf dry masses exhibited in each watershed
# (reference and W1):
ggplot(data=maples.data, aes(x=watershed, y=leaf_dry_mass, fill=watershed)) +
  geom_boxplot() + ggtitle("Maple leaf dry masses in watersheds")
dev.copy(jpeg,'Balfour_PR-class_figure3_leaf-dry-mass_00.png')
dev.off()

# Figure 4: a boxplot of the mean stem dry masses exhibited in each watershed
# (reference and W1):
ggplot(data=maples.data, aes(x=watershed, y=stem_dry_mass, fill=watershed)) +
  geom_boxplot() + ggtitle("Maple stem dry masses in watersheds")
dev.copy(jpeg,'Balfour_PR-class_figure4_stem-dry-mass_00.png')
dev.off()

# END OF SCRIPT----------------------------------------------------------------
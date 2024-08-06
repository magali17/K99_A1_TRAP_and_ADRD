# Created by targets::use_targets().

# Thenthe manual to check and run the pipeline:
#   https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline

# Load packages required to define the pipeline:
library(targets)
# library(tarchetypes) # Load other packages as needed.

# Set target options:
tar_option_set(
  packages = c("tidyverse") # Packages that your targets need for their tasks.
  )

# Run the R scripts in the R/ folder with your custom functions:
tar_source()
# tar_source("other_functions.R") # Source other scripts as needed.

# # load functions/code to be run
# lapply(list.files("R", full.names = TRUE), source)




####################################################################################
# targets to run  
####################################################################################
list(
  # initiate file
  tar_target(original_file, "../data/original/iris.csv", format = 'file'),
  # update file
  tar_target(updated_file, get_variables(original_file)),
  # make a plot
  tar_target(plot1, make_plot(updated_file))
)

####################################################################################
# manuscript targets







###################################################################################
# QC
####################################################################################
# tar_visnetwork()
# tar_manifest(fields = all_of("command"))

# check which targets are up to date
# tar_outdated() 
####################################################################################
# run stuff
####################################################################################
# tar_make()

####################################################################################
# read in results
####################################################################################
# tar_read(updated_file)
# tar_read(plot1)


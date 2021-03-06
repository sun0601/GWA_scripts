#  Copyright (c) 2017, GeoVille Information Systems GmbH
#  All rights reserved.
#
#  Redistribution and use in source and binary forms, with or without
#  modification, is prohibited for all commercial applications without
# licensing by GeoVille GmbH.
#
#
# Date created: 06.05.2017
# Date last modified: 15.01.2018
#
#
# __author__ = "Christina Ludwig"
# __version__ = "1.0"


# INPUT PARAMTERS --------------------------------------------------------

# -> FOR QGIS Processing modules
##Optical Water Detection=name
##Water Cycle Regime=group
##Directory_containing_indices=folder
##Directory_containing_TWI=folder
##Output_Directory=folder
##Start_Date= optional string
##End_Date= optional string
##Minimum_water_probability=number 45
##Minimum_mapping_unit = number 3
##Plot_water_probability= Boolean False
##Plot_certainty_indicator= Boolean False


# -> Test parameters for execution in R
DEBUG <- F
start_time <- proc.time()

if (DEBUG) {
  .libPaths("C:\\Users\\ludwig\\.qgis2\\processing\\rlibs")
  #.libPaths("C:\\Users\\ludwig\\Documents\\R\\win-library\\3.2")
  Directory_containing_indices= "I:\\temp\\GWA_TBX_test\\indices"
  Directory_containing_TWI= "I:\\2687_GW_A\\Toolbox\\02_InterimProducts\\TWI"
  Output_Directory="I:\\temp\\GWA_TBX_test"
  Minimum_water_probability = 44
  Start_Date <- " "
  End_Date <- " "
  Minimum_mapping_unit = 3
  Plot_certainty_indicator = F
  Plot_water_probability = T
}

# LOAD LIBRARIES -------------------------------------------------------

library(raster)
library(rgdal)
library(rpanel)
library(stringr)

#source("I:\\2687_GW_A\\04_CODE\\git_repos\\GWA_scripts\\rscripts\\GWA_TBX\\GWAutils\\R\\GWAutils.R")
library(GWAutils)

WCR_workflow(Directory_containing_indices,
             Directory_containing_TWI, 
             Output_Directory,
             Minimum_water_probability, 
             Start_Date,
             End_Date,
             Minimum_mapping_unit,
             Plot_certainty_indicator,
             Plot_water_probability)

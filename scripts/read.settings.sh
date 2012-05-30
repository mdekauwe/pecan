#!/bin/sh
############################################################################################
#  read.settings.sh
#  
#
#  
#
############################################################################################


clear
echo "********************************************************************"
echo "********************************************************************"
echo "****************** Reading in PEcAn Settings File ******************"
echo "********************************************************************"
echo "********************************************************************"


############################################################################################
# Info: Launches R script to open and parse PEcAn XML config file for use throughout
# the PEcAn workflow.

#R --vanilla --args $1 < ../common/R/read.settings.R
R CMD BATCH --args $1 < ../common/R/read.settings.R
wait

echo "---- Opening PEcAn XML file is complete"

############################################################################################
### EOF
############################################################################################
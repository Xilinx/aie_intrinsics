#!/bin/bash
#
# COPYRIGHT NOTICE
# Copyright 1986-1999, 2001-2018 Xilinx, Inc. All Rights Reserved.
#

# This utility copies the webhelp files to the recommended location so 
# that you can access the help from within the Vitis IDE.




echo "******************************************************************************************"
echo "This utility copies the webhelp files to the recommended location so that you can access the help from within the Vitis IDE."

HELP_DIR="$HOME/.Xilinx/Vitis/2021.1/helpdocs/aie_intrinsics/"

echo "Checking if helpdocs directory exists"

if [ -d "$HELP_DIR" ]; then
  echo
  echo "Help Directory exists."  
  echo
 
else
  echo
  echo "${HELP_DIR} not found. Creating a new one.."
  mkdir $HELP_DIR
  echo
fi

echo "Installing help files in ${HELP_DIR}..."
echo

for i in `ls`; do  cp -R $i $HELP_DIR;  done  
rm -Rf  $HELP_DIR/install-help-aie-intrinsics.sh
rm -Rf  $HELP_DIR/install-help-aie-intrinsics.bat

echo
echo "Operation Completed!"
echo "You can now access the AI Engine Intrinsics Documentation from within the Vitis IDE.  Launch the Vitis IDE and select Help - AI Engine Intrinsics Documentation to view the help files."
echo "******************************************************************************************"

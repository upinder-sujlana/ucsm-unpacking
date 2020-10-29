#!/bin/bash

#author ="Upinder Sujlana"

#The intention of the script is to untar the tar.gz files inside the UCSM TAR file into individual folder.
#After this I usually grep for link flaps, version etc info while troubleshooting.

# Make sure atleast one tar file is in the folder
count_file=`ls -1 *.tar 2>/dev/null | wc -l`
if [ $count_file == 1 ]
then
 echo "Currently the script runs only on one UCSM bundle in the folder."
 echo "Found one. Proceeding"
else
 echo "No files found or more than one TAR file found."
 echo "Please put atleast one UCSM file in the folder. Exiting script."
 exit 1
fi

# Untar the parent TAR file
for F in *.tar; do tar -xvf "$F"; done

# Change directory into child folder
cd *UCSM

# UCSM TAR seems to have unwanted files. cleaning up a bit.
rm -rf *.done ; rm -rf *.expected

# For UCSM A & B untar each of the TAR.GZ file into seperate folder.
for file in *.tar.gz
do
 dir="${file%.tar.gz}"
 mkdir -- "$dir"
 cp -- "$file" "$dir"
 cd "$dir"
 tar -xzf *.tar.gz --checkpoint=.3000;echo
 rm -rf *.tar.gz
 cd ..
done

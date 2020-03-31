#!/bin/bash

echo Run as sudo for RHEL 7 CSB Desktops

# read the previous build number
BUILD_NUMBER=$(cat build.txt)
let "BUILD_NUMBER++"
echo $BUILD_NUMBER > build.txt 


# Create the application, based off the latest corporate base image
# buildah bud -t sample-app .

# tag
#buildah tag sample-app latest



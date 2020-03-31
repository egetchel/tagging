#!/bin/bash

echo Note: Run as sudo for RHEL 7 CSB Desktops

# Create the application, based off the latest corporate base image
buildah bud -t sample-app .

# Add whatever tags are needed
#buildah tag sample-app latest

# Push to registry housing the dev images
buildah push --creds egetchel+robot:WOQKCU86URPXYWFR6FYK9A4529ADNZ30553ZER0PKL8QQUDQFWZ7ESD9LV53CTEW sample-app quay.io/egetchel/dev



#!/bin/bash

echo Run as sudo for RHEL 7 CSB Desktops

# This script will upgrade the corporate base image based to the 7.7 image in the Red Hat Container Registry

# Pull in rhel-minial version
buildah bud -t corporate-rhel7-base -f Dockerfile.7.7 .
buildah tag corporate-rhel7-base 7.7
buildah tag corporate-rhel7-base latest

# Push to registry housing the base images
buildah push --creds egetchel+robot:WOQKCU86URPXYWFR6FYK9A4529ADNZ30553ZER0PKL8QQUDQFWZ7ESD9LV53CTEW corporate-rhel7-base quay.io/egetchel/base_image

#!/bin/bash

IMAGE_DATE=$(date +%Y%m%d.%H)
MAJOR_RELEASE_VERSION=$(grep -oP '[0-9]*' /etc/fedora-release)
sed -i "s,^PRETTY_NAME=.*,PRETTY_NAME=\"Supernova ${MAJOR_RELEASE_VERSION}.${IMAGE_DATE} (Astro)\"," /usr/lib/os-release
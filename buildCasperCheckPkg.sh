#!/bin/bash

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

# builds the 

pkgname="caspercheck"
version="1.0"
identifier="nl.prowarehouse.${pkgname}"
install_location="/Library/Application Support/ProWarehouse/"
signature="Installer: Armin Briegel"

projectfolder=$(dirname "$0")

pkgpath="${projectfolder}/${pkgname}-${version}.pkg"

pkgbuild --root "${projectfolder}/script" \
         --identifier "${identifier}" \
         --version "${version}" \
         --install-location "${install_location}" \
         "${pkgpath}"


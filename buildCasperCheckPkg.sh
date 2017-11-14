#!/bin/bash

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

# builds the 

pkgname="caspercheck"
version=$(date +%Y%m%d%H%M)
identifier="nl.prowarehouse.${pkgname}"
install_location="/"
signature="Installer: Armin Briegel"

projectfolder=$(dirname "$0")

pkgpath="${projectfolder}/${pkgname}-${version}.pkg"

pkgbuild --root "${projectfolder}/payload" \
         --identifier "${identifier}" \
         --version "${version}" \
         --install-location "${install_location}" \
         --scripts "${projectfolder}/install_scripts" \
         "${pkgpath}"


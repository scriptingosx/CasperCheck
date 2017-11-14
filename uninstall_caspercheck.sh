#!/bin/bash

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

identifier="nl.prowarehouse.caspercheck"

# unload launchdaemon

launchctl unload "/Library/LaunchDaemons/${identifier}.plist"

# uninstall caspercheck files

rm "/Library/Application Support/ProWarehouse/caspercheck.sh"
rm "/Library/LaunchDaemons/${identifier}.plist"
rm -rf "/private/var/root/quickadd"

pkgutil --forget "${identifier}"

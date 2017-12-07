#!/bin/bash

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

# checks if caspercheck script is installed
# use as extension attribute in Jamf

if [[ -e "/Library/Application Support/ProWarehouse/caspercheck.sh" ]];
	echo "<result>installed</result>"
else
	echo "<result>no</result>"
fi

exit 0
#!/bin/bash

# Create a record for a new month with appropriate links to the past month.

export DATE=$(date +%Y-%m)
export LASTMONTH=$(date -d 'last month' +%Y-%m)

if [[ -f ${DATE} ]]
then
	echo "ERROR: file ${DATE} already exists. Aborting."
	exit 1
fi

envsubst < TEMPLATE > ${DATE}

envsubst < CURRENT_template > CURRENT


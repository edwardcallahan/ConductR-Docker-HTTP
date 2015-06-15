#!/usr/bin/env bash

webserver_target_dir="target/webserver"

# remove the target directory
rm -rf target

# create target directory and copy bundle files
mkdir -p ${webserver_target_dir}
cp -rp src/main/resources/* ${webserver_target_dir}

# use TC_CLI if set
tc_cli=`echo "${TC_CLI%/}"`
if [ "x${tc_cli}" != "x" ]; then
	shazar="${tc_cli}/shazar"
else
	shazar="shazar"
fi

# create the bundle
${shazar} --output-dir target ${webserver_target_dir}

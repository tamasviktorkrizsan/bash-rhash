#!/bin/bash
# Hash reading function for RHash.
# Copyright (C) 2020 Tamas Viktor Krizsan
# <https://github.com/tamasviktorkrizsan>
# License: GPL-3.0-or-later


### INCLUDES

source rhash.sh


### FUNCTION

###############################################
# Write hash file.
# Arguments:
#   file, folder or wildcard pattern.
###############################################
function write_hash () {

### INPUT PARAMETERS

declare usr_input=$1;


### PROCESSING

# If there is no input paramteter has given, then hash all files/subfolders in the root.
if [[ -z "${usr_input}" ]]
  then usr_input=$(basename $PWD);

  # Step back in the folder tree.

  cd ..;

fi


declare output;

output=$(replace_whitespace "$usr_input");

declare cfg_write="--recursive --follow --sha256 --exclude=.sha256 --printf=%{sha-256}\t%p\n --update=${output%.*}.sha256";


# EXECUTING COMMAND

rhash $RHASH_SHARED_SETTINGS $cfg_write "$usr_input" 2>&1 |\

tee "$output.log";

}

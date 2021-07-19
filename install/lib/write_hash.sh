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

declare input_name;


if [[ -n "${usr_input}" ]]

  then input_name=$usr_input;

  # If there is no input paramteter has given, then hash all files/subfolders in the root.
  # get root folder name

  else input_name=$(basename "$PWD");

  # create checksum folder and enter it.

  declare hash_folder="Z_VERSION_CONTROL\CHECKSUM";

  make_dir "$hash_folder";

  cd "$hash_folder";


  # hash all files/subfolders in the root

  usr_input="../../";

fi

declare output_filename;

output_filename=$(replace_whitespace "$input_name");

declare cfg_write="--recursive --follow --sha256 --exclude=.sha256 --printf=%{sha-256}\t%p\n --update=${output_filename%.*}.sha256";


# EXECUTING COMMAND

rhash $RHASH_SHARED_SETTINGS $cfg_write "$usr_input" 2>&1 |\

tee "$output_filename.log";

}

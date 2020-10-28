#!/bin/bash
# Hash reading function for RHash.
# Copyright (C) 2020 Tamas Viktor Krizsan
# <https://github.com/tamasviktorkrizsan>
# License: GPL-3.0-or-later


### INCLUDES

source rhash.sh


### FUNCTIONS

###############################################
# Read hash file.
# Arguments:
#   Input hash file or wildcard pattern.
# Outputs:
#   check hash values of the listed files.
###############################################
function read_hash () {

## Input Parameters

local user_input_file="${1:-*.sha*}";


## Executing Command

for i in $user_input_file;
do rhash --check $RHASH_SHARED_SETTINGS "$i";
done;

}

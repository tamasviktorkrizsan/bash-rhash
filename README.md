# bash-rhash
Collection of functions for RHash.

## Installation

### Prerequisites

In order to use these functions, install the **bash-functions** repository first.
For more information follow the **README.md** guide there.
You can find the copy of this repo in the form of a subtree in the "install/dependencies/subtree"
path or through this URL.

https://github.com/tamasviktorkrizsan/bash-functions


### Installation of this repository

Set a PATH environmental variable to the directory where you want store your library
files and copy the contents of the "install/lib" folder to it.


## Usage

Copy the chosen script file from the "call" folder to the target directory,
where you want to process your files, edit it to your needs, and execute it.


## Functions

### read_hash

`read_hash "<hash file>";`

Read hash files.

- **default state:** when all parameters are empty, the script
will read all hash file type with the following extensions:  
sha*


### write_hash

`read_hash "<input folder>" "<input file>";`

Write hash files.

- **default state:** when all parameters are empty, the script
will read all hash file type with the following extensions:  
sha*


## Developer notes

### Code style

The code in this repository formatted according the guidelines of the Google Style Guides.
If you want to contribute to this project, then read the guide first.

https://google.github.io/styleguide/shellguide.html


## Sources

https://github.com/rhash/RHash

http://rhash.sourceforge.net/manpage.php

#!/bin/bash

# Copyright 2015-2019 Joao Eriberto Mota Filho <eriberto@eriberto.pro.br>
# Create a manpage using txt2man command.
#
# This script can be used under BSD-3-Clause license.

T2M_DATE="04 Nov 2019"
T2M_NAME=xmldiff
T2M_VERSION=2.4
T2M_LEVEL=1
T2M_DESC="Patch an XML file with an xmldiff"

# Don't change the following lines
TEST=$(txt2man -h 2> /dev/null)
[ "$TEST" ] || { echo -e "\nYou need to install txt2man, from https://github.com/mvertes/txt2man.\n"; exit 1; }

txt2man -d "$T2M_DATE" -t $T2M_NAME -r $T2M_NAME-$T2M_VERSION -s $T2M_LEVEL -v "$T2M_DESC" $T2M_NAME.txt > $T2M_NAME.$T2M_LEVEL

T2M_DATE="04 Nov 2019"
T2M_NAME=xmlpatch
T2M_VERSION=2.4
T2M_LEVEL=1
T2M_DESC="Patch an XML file with an xmldiff"

# Don't change the following lines
TEST=$(txt2man -h 2> /dev/null)
[ "$TEST" ] || { echo -e "\nYou need to install txt2man, from https://github.com/mvertes/txt2man.\n"; exit 1; }

txt2man -d "$T2M_DATE" -t $T2M_NAME -r $T2M_NAME-$T2M_VERSION -s $T2M_LEVEL -v "$T2M_DESC" $T2M_NAME.txt > $T2M_NAME.$T2M_LEVEL

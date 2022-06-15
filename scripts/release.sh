#!/bin/sh

# Change to the directory containing this script file
cd "$(dirname "$(readlink -f "$0")")" || exit 1
cd .. || exit 1

robot template \
--template phi-eco.tsv \
--input phi-eco.owl \
--output phi-eco.ofn \
--merge-before \
&& mv phi-eco.ofn phi-eco.owl \
&& robot convert -i phi-eco.owl -o phi-eco.tmp.obo \
&& mv phi-eco.tmp.obo phi-eco.obo

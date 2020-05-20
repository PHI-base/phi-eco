@echo off

cd ..
call robot template ^
--template phi-eco.tsv ^
--input phi-eco.owl ^
--output phi-eco.ofn ^
--merge-before
move /y phi-eco.ofn phi-eco.owl >nul
call robot convert -i phi-eco.owl -o phi-eco.obo

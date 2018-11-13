#!/bin/bash

pandoc --pdf-engine=lualatex -H \
    ~/Documents/Templates/fonts.tex -o \
    ${1//.md}.pdf ${1}    

echo "Generated ${1//.md}.pdf"

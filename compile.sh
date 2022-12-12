#!/bin/bash

if [ "$2" = "--help" ]; then
  echo "Usage: $0 [--bibtex]"
  echo ""
  echo "--bibtex    Compile new bibtex references using biber"
  exit
fi

cd src;

if [ "$2" = "--bibtex" ]; then
    lualatex *.tex
    biber $1
    lualatex *.tex
fi

lualatex *.tex

mv main.pdf ../pdi.pdf
cd ..;
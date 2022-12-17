#!/bin/bash

if [ "$1" = "--help" ]; then
  echo "Usage: $0 [--bibtex]"
  echo ""
  echo "--bibtex    Compile new bibtex references using biber"
  exit
fi

cd src;

if [ "$1" = "--bibtex" ]; then
    lualatex *.tex
    biber main
    lualatex *.tex
fi

lualatex *.tex

mv main.pdf ../pdi.pdf
cd ..;
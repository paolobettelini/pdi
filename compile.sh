#!/bin/bash

if [ "$1" = "" ]; then
  echo "Usage: $0 <title> [--bibtex]"
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

mv pdi.pdf ../main.pdf
cd ..;
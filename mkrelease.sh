#!/bin/bash
pdflatex N4VEM_Ops_Manual.tex
pdflatex N4VEM_Ops_Manual.tex
if [[ -z "$1" ]]; then
	echo Release version string not specified
	echo Usage:  $0 1.0.2-rc2
else
	zip -9o "N4VEM_Ops_Manual-$1.zip" *.pdf *.txt
fi


#!/bin/bash

# compilation of source
pdflatex main;

# bibtex file names
bibfiles=(
      main
      chapi
      chapii
      chapiii
      chapiv
      chapv
      chapvi
      chapvii
      chapviii
      chapix
      chapx
);

# compilation of bibliography
for file in ${bibfiles[@]};do
      if [[ -f ${file}.aux ]];then
            bibtex $file;
      fi;
done;

# compilation of nomenclature
makeindex main.nlo -s nomencl.ist -o main.nls;

# compilation for cross references
pdflatex main;
pdflatex main;

# end of file

% Ricardo Costa, December, 2021

This template uses LaTeX typesetting and requires pdflatex and bibtex commands for compilation.

File main.tex is where everything is included.
Open file main.tex and follow the instructions and steps provided to start writing your work.

You can execute the script "./makemain.sh" to compile the source code and generate the PDF document, including bibliography and cross references.
You can also compile only file main.tex with pdflatex command for a quicker PDF document generation than executing the script "./makemain.sh".
However, you need to execute the script "./makemain.sh" to properly generate the bibliography and cross references.

In folder uminho/newsgott/ you can find the custom font NewsGotT with TFM files already generated from the TTF sources provided.
You can execute the script "./makefont.sh" if needed to recompile the custom font files (in that case, the ttf2tfm utility needs to be installed on your computer).

In folder preamble/ you can find the document formatting and some specific LaTeX packages required.
You should not modify theses files, unless necessary to include new packages or commands.

In folder covers/ you can find the covers and title pages of the document that are included during the compilation.
You can open the SVG files with an appropriate editor (Inkscape, etc.), edit with your personal and work data, and save them in the PDF format.
These PDF files are directly included in the document rather than generated from LaTeX.

In folder preliminaries/ you can find the first pages required for the document.
You can edit these files as necessary.

In each folder chapX/ you can find the contents of each chapter, and you can edit these files to write the contents of your work.
Folders chap1/ and chap2/ are provided as examples and correspond to two different chapter formats.

Suggestions, requests, and bug reports can be sent to the e-mail address "rcosta@dep.uminho.pt".

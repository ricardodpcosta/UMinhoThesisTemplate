# UMinho Thesis Template

_UMinho Thesis Template_ is a LaTeX template for academic works formatted according to the rules for doctoral theses and master works (dissertations, internship reports, projects, etc.) from the University of Minho officially published in "Despacho RT-31/2019".

It is recommended to read carefully the official documents in [_UMinho Thesis Official_](https://github.com/ricardodpcosta/UMinhoThesisOfficial) and check whether modifications to the formatting rules currently in this template have been recently introduced.

Below you can find a tutorial with a sequence of steps to guide you in adapting this template to your work, and further instructions are provided in the included files. Follow the steps and make sure the template compiles without errors after the necessary changes are made according to the instructions.

## Template structure

- In `preamble/` are defined the template formatting rules with the necessary packages and commands. These files should not be usually modified at the risk of breaking the document format. If certain packages and commands, other than the ones already included and defined in the template, are necessary to meet specific the needs of your document, consider doing so in `main.tex`.

- In `covers/` are provided the covers and title pages of your document. The SVG files provided should be edited as necessary with your personal information (recommended software is Inkscape) and then exported to the same folder in PDF format. These PDF files are directly included in the document rather than generated from a LaTeX source.

- In `preliminaries/` are provided the first pages of your document required or optional as established in the official formatting rules. The LaTeX source files should be edited as necessary with your personal information.

- In `bibliography/` are stored the bibliographic references of your document. There are several approaches for bibliography management with LaTeX and only one of these LaTeX source files should be edited according to your personal choice.

- In `chap1/` and `chap2/` are stored the contents of each chapter of your document. These LaTeX source files should be edited with the contents of your work, whereas `chap1/` and `chap2/` are provided as examples and correspond to two different chapter formats.

## Custom font

The official font for the doctoral theses and master works from the University of Minho is _NewsGotT_, which is already installed for LaTeX in `preamble/newsgott/`, with the TFM files already generated from the TTF sources provided officially. If these files need to be regenerated, you can execute the bash script `makefont.sh` (the `ttf2tfm` utility needs to be installed on your computer).


## 1. Covers and title page

1.1 - Covers and title pages used in this template are generated outside LaTeX and then included into the compiled PDF document.

1.2 - Templates for the covers in SVG format for doctoral thesis and master works are provided, which can be edited with the appropriate software (Inkscape, etc.) and then saved in PDF format.

1.3 - Make sure the official font (NewsGotT) is installed on your computer before editing the cover templates (the source font files are provided in UMinhoThesisOfficial for installation).

1.4 - Choose below the cover and the title page for your work (doctoral thesis or master work) and comment/uncomment the predefined selection as necessary.

1.4 - Edit the corresponding SVG files available in folder covers/ with your personal and work data as necessary (author name, work title, work date, academic course, supervisors names, etc.).

1.5 - Save in the same folder the edited SVG files in PDF format (only change the extension)

1.6 - Additional covers for others UOEIs are provided in UMinhoThesisOfficial in AI format to be edited and converted to PDF format and saved in folder covers/

```
% select font
\usecustomfont
% front page
% leave this uncommented for a doctoral thesis
\includepdf[pages=-,fitpaper,landscape=true]{covers/doctoral_front_cover.pdf}
\includepdf[pages=-,fitpaper,landscape=true]{covers/doctoral_back_cover.pdf}
% leave this uncommented for a master work
%\includepdf[pages=-,fitpaper,landscape=true]{covers/master_front_cover.pdf}
%\includepdf[pages=-,fitpaper,landscape=true]{covers/master_back_cover.pdf}
% page numbering
\newpage
\pagenumbering{roman}
\setcounter{page}{1}
% leave this uncommented for a doctoral thesis
\includepdf[pages=-,offset=0 -0]{covers/doctoral_title_page.pdf}
% leave this uncommented for a master work
%\includepdf[pages=-,offset=0 -0]{covers/master_title_page.pdf}
```





This template uses LaTeX typesetting and requires pdflatex and bibtex commands for compilation.

File main.tex is where everything is included.
Open file main.tex and follow the instructions and steps provided to start writing your work.

You can execute the script "./makemain.sh" to compile the source code and generate the PDF document, including bibliography and cross references.
You can also compile only file main.tex with pdflatex command for a quicker PDF document generation than executing the script "./makemain.sh".
However, you need to execute the script "./makemain.sh" to properly generate the bibliography and cross references.




Make sure you have LaTeX installed on your computer and run the command "pdflatex main" on
% the command line to generate the PDF document
% - In most LaTeX editors (Texmaker, MiKTeX, etc.), shortcuts from buttons exist for that purpose
% and usually need to be run from the main file (main.tex)
% - Compiling twice is required for cross-references of figures, tables, equations, etc. to be correctly
% generated and referenced in the generated PDF document
% - Recommended LaTeX editor is Texmaker (https://www.xm1math.net/texmaker/)





## Suggestions

Any suggestions for improvements or bug fixes to this template can be sent to me via [e-mail](mailto:rcosta@dep.uminho.pt).

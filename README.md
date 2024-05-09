# UMinho Thesis Template

_UMinho Thesis Template_ is a LaTeX template for academic works formatted according to the rules for doctoral theses and master works (dissertations, internship reports, projects, etc.) from the University of Minho officially published in "Despacho RT-31/2019". It is recommended to read carefully the official documents in [UMinho Thesis Official](https://github.com/ricardodpcosta/UMinhoThesisOfficial) and check whether modifications to the formatting rules currently in this template have been recently introduced.

Below you can find a tutorial with a sequence of steps to guide you in adapting this template to your work, and further instructions are provided in the included files. Follow the steps and make sure the template compiles without errors after the necessary changes are made according to the instructions.

---

## Compilation

- This template uses LaTeX typesetting and requires `pdflatex` and `bibtex` commands for compilation.

- In `main.tex` is where everything is included and contains instructions and steps to guide thought the template.

- Make sure you have LaTeX installed on your computer and run the command `pdflatex main` on the command line to compile the source code and generate the PDF document.

- In most LaTeX editors (Texmaker, MiKTeX, etc.), shortcuts from buttons exist for that purpose and usually need to be run from the main file (`main.tex`).

- Compiling twice is required for cross-references of figures, tables, equations, etc., to be correctly generated and referenced in the generated PDF document.

- Executing the bash script `makemain.sh` for cross-references of bibliography entries to be correctly generated and referenced in the generated PDF document.

- Recommended LaTeX editor is [Texmaker](https://www.xm1math.net/texmaker/) and this template is also available in Overleaf.

---

## Structure

- In `preamble/` are defined the template formatting rules with the necessary packages and commands. These files should not be usually modified at the risk of breaking the document format. If certain packages and commands, other than the ones already included and defined in the template, are necessary to meet specific the needs of your document, consider doing so in `main.tex`.

- In `covers/` are provided the covers and title pages of your document. The SVG files provided should be edited as necessary with your personal information (recommended software is Inkscape) and then exported to the same folder in PDF format. These PDF files are directly included in the document rather than generated from a LaTeX source.

- In `preliminaries/` are provided the first pages of your document required or optional as established in the official formatting rules. The LaTeX source files should be edited as necessary with your personal information.

- In `bibliography/` are stored the bibliographic references of your document. There are several approaches for bibliography management with LaTeX and only one of these LaTeX source files should be edited according to your personal choice.

- In `chap1/` and `chap2/` are stored the contents of each chapter of your document. These LaTeX source files should be edited with the contents of your work, whereas `chap1/` and `chap2/` are provided as examples and correspond to two different chapter formats.

---

## Custom font

- The official font for the doctoral theses and master works from the University of Minho is _NewsGotT_, which is already installed for LaTeX in `preamble/newsgott/`, with the TFM files already generated from the TTF sources provided officially.

- If these files need to be regenerated, you can execute the bash script `makefont.sh` (the `ttf2tfm` utility needs to be installed on your computer).

---

## Preamble

```latex
% document title
%\def\doctitle{}
% document title
%\def\docauthor{}
% document language (default is english)
%\def\doclanguage{portuguese}
% formatting rules
\input{preamble/preamble}
% nomenclature list
%\input{include/preliminaries/nomencl}
% leave this uncommented for a bibliography with Sortedbib
%\input{bibliography/references2.tex}
% leave this uncommented to convert chapters into sections
%\convertchaptersintosections
% customise title fonts (can also be defined for each chapter individually)
%\chaptertitlefont{}
%\sectiontitlefont{}
%\subsectiontitlefont{}
%\subsubsectiontitlefont{}
%\paragraphtitlefont{}
```

---

## Covers and title page

- Covers and title pages used in this template are generated outside LaTeX and then included into the compiled PDF document.

- Templates for the covers in SVG format for doctoral thesis and master works are provided, which can be edited with the appropriate software (Inkscape, etc.) and then saved in PDF format.

- Make sure the official font (NewsGotT) is installed on your computer before editing the cover templates (the source font files are provided in UMinhoThesisOfficial for installation).

- Choose below the cover and the title page for your work (doctoral thesis or master work) and comment/uncomment the predefined selection as necessary.

- Edit the corresponding SVG files available in folder covers/ with your personal and work data as necessary (author name, work title, work date, academic course, supervisors names, etc.).

- Save in the same folder the edited SVG files in PDF format (only change the extension).

- Additional covers for others UOEIs are provided in UMinhoThesisOfficial in AI format to be edited and converted to PDF format and saved in folder covers/

```latex
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

---

## Preliminaries

- The following pages are required to be included in the doctoral theses and master works, with the exception of the acknowledgements and the publications and awards sections.

- Comment the line of the acknowledgements and the publications and awards if you do not want them to be included in the generated PDF document.

- Open each of the files below, edit the personal and work data as necessary, and follow the instructions provided to complete the required information.

- The template automatically generates a table of contents and lists of figures, tables, and nomenclature for your work.

- Choose below the indexes to be generated and comment/uncomment the predefined selection as necessary. For instance, if your work has no tables or you do not want them to be indexed in a list of tables, comment both the commands `\dominilot` and `\listoftables`, otherwise an empty list will be generated.


```latex
% preliminaries format
\preliminariesformat
\input{preliminaries/redistribution}
\input{preliminaries/acknowledgements}
\input{preliminaries/statement_of_integrity}
\input{preliminaries/resumo}
\input{preliminaries/abstract}
\input{preliminaries/publications_and_awards}
% leave this uncommented for a table of contents
\dominitoc
\tableofcontents
% leave this uncommented for a list of figures
\dominilof
\listoffigures
% leave this uncommented for a list of tables
\dominilot
\listoftables
% leave this uncommented for a nomenclature
%\printnomenclature
```

---

# Chapters and sections

- There are two formats for the chapters (plain chapters and article chapters), which you can choose from the provided templates below.

- Plain chapters have their sections beginning on the same page as the title, article chapters have an abstract and keywords on the first page while sections begin on the next page.

- Article chapters are more appropriate when your work is based on articles or when you want to include a general introduction/motivation to the topic before actually starting developing it.

- Each chapter corresponds to a different folder named chap1, chap2, chap3, etc., where the necessary sections, bibliography, figures, etc. are included for the sake of organisation.

- You can find below a template for a plain chapter (chap1) and an article chapter (chap2) that should be edited with the contents of your work and duplicated to create new chapters for your document.

- Open each of the chapters below and follow the instructions provided.

```latex
% page numbering
\newpage
\pagenumbering{arabic}
\setcounter{page}{1}
% leave this uncommented for chapter 1
\input{chap1/chap1.tex}
% leave this uncommented for chapter 2
\input{chap2/chap2.tex}
% leave this uncommented for chapter 3
%\input{chap3/chap3.tex}
% leave this uncommented for chapter 4
%\input{chap4/chap4.tex}
% leave this uncommented for chapter 5
%\input{chap5/chap5.tex}
% leave this uncommented for chapter 6
%\input{chap6/chap6.tex}
```

---

## Bibliography

- There are several approaches for bibliography management with LaTeX and this template includes three options (Bibitems, BibTeX, and SortedBib), which you can choose from the provided templates below

### Bibitems

- Bibitems consists of a list of bibliography items supplied with the command `\bibitem`, which later can be referenced with the command `\cite{}`.

- It is the simplest approach of creating a bibliography for your work, but you have to manually formatting the bibliographic entries according to some style you chose.

- Moreover, the reference numbers are attributed according to the order they are provided to LaTeX (and not according to the order of citation), and all the bibliographic entries are present in the references section of the generated PDF document, even if they are not cited.

- Compiling with `pdflatex` twice is required for cross-references of bibliographic entries to be correctly generated and referenced in the generated PDF document.

```latex
% leave this uncommented for a bibliography with Bibitems
\bibliographyformat
\begin{thebibliography}{1}
\input{bibliography/references1.tex}
\end{thebibliography}
```

### BibTex

- BibTeX consists of a bibliography database of formatting independent information of the references for the work.

- Each bibliographic entry has a given type (article, book, inproceedings, etc.) to determine the automatic formatting of the reference in the generated PDF document.

- Moreover, the reference numbers are attributed according to the order they are cited (and not according to the order they are provided to LaTeX), and only the cited bibliographic entries are present in the references section of the generated PDF document.

- Compiling with the sequence `pdflatex`, `bibtex`, and finally `pdflatex` twice is required for cross-references of bibliographic entries to be correctly generated and referenced in the generated PDF document.

- Several bibliography files can be provided to the command `\bibliography{}` separated with commas, and the file extension .bib is required for the bibliography databases.

```latex
% leave this uncommented for a bibliography with BibTeX
\bibliographyformat
\bibliography{bibliography/references.bib}

```

### SortedBib

- SortedBib is similar to Bibitems, but the command `\bibitem{}` needs to be replaced with `\addbib{}` and the command `\cite{}` needs to be replaced with `\citebib{}` (you need to perform these changes in this template if you choose to use SortedBib).

- It keeps the simplicity of the Bibitems approach of creating a bibliography for your work, but the reference numbers are attributed as in BibTeX, that is, according to the order they are cited (and not according to the order they are provided to LaTeX), and only the cited bibliographic entries are present in the references section of the generated PDF document.

- Compiling with `pdflatex` twice is required for cross-references of bibliographic entries to be correctly generated and referenced in the generated PDF document as for Bibitems.

- Although it avoids the compilation complexity of the BibTeX approach, you still have to manually formatting the bibliographic entries according to some style you chose as in Bibitems.

- The bibliography file needs to be provided with the command `\input{}` placed before the command `\begin{document}` and after the preamble.

```latex
% leave this uncommented for a bibliography with SortedBib
\bibliographyformat
\begin{thebibliography}{1}
\printbib
\end{thebibliography}
```

### Individual bibliography

- Separating the bibliography by chapters is useful when each chapter needs to have its own bibliography (see further instructions in the template chapters provided).

- Individual references sections are included at the end of each chapter and, in that case, BibTeX needs to be used since the other approaches are not capable of producing the same results.

- The compilation becomes more complex as several stages are required and, therefore, executing the bash script `makemain.sh` is easier than to manually executing all the compilation steps required.

- If using individual bibliographies for the chapters, leave commented all the commands provided for the bibliography in `main.tex` and uncomment the corresponding commands provided in each chapter.

```latex
% leave this uncommented for an individual chapter bibliography
\chapterbibliographyformat
\nocitechapi{*}
\bibliographystylechapi{unsrt}
\bibliographychapi{chap1/include/sections/bibliography.bib}
```

---

## Appendices

- Appendices can be introduced as regular chapters replacing the command `\chapter{}` with `\appendixchapter`, after which sections and subsections can be introduced normally.

- Appendices can also be introduced as sections inside chapters replacing the command `\section{}` with `\appendixsection`, after which subsections can be introduced normally.

- In both cases, the command `\noappendix` should be placed at the end of the chapter or section corresponding to the appendices.

---

## Suggestions

Any suggestions for improvements or bug fixes to this template can be sent to me via [e-mail](mailto:rcosta@dep.uminho.pt).

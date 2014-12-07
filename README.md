chemobabel.sty
==============

LaTeX package for generating chemical structural formula from ChemDraw files or SMILES notations using Open Babel

Copyright 2014 Acetaminophen (Hironobu YAMASHITA)

  Blog: http://acetaminophen.hatenablog.com/

This package offers a new choice for chemists who need chemical structures in their LaTeX documents.
With this package you can insert chemical structural formulas into your PDF files easily with the help of Open Babel and Inkscape.

Various chemical formats are allowed for input: for example, .cdx, .mol, .smi

See http://acetaminophen.hatenablog.com/entry/2014/12/08/053519 for detail. (Sorry in Japanese)

 This work is based on a lot of resources published online:
  - Noel O'Boyle http://baoilleach.blogspot.jp/
  - Jakob Lykke Andersen http://imada.sdu.dk/~jlandersen/
  - TeX Forum http://oku.edu.mie-u.ac.jp/tex/

Explanation for files:
 - chemobabel.sty: Package itself
 - chemobabel-extract.tex: Macros for extracting \chemobabel and \smilesobabel commands
 - chemobabel.pdf: Basic usage (source: usage.tex)
 - example.pdf: Examples in English (source: example.tex)
 - example-ja.pdf: Examples in Japanese (source: example-ja.tex)
Sample ChemDraw files and MDL Molfiles are also included.

Obsolete (but perhaps useful) Files:
 - chemobabel-extract-compatible.tex: Macros for extracting \smiles and \obabel commands with \smilesobabel commands at the same time
 - example-compatible.pdf, example-compatible.tex
 - example-ja-compatible.pdf, example-ja-compatible.tex

Version History:
 - 2014-12-01 Version 0.1 (First commit)
 - 2014-12-02 Version 0.2 (Add a parameter to be passed to obabel; the number of parameters changed!)
 - 2014-12-07 Version 0.3 (Change name of package: chemobabel.sty; add \chemobabel command)

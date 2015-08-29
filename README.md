chemobabel.sty
==============

LaTeX package for generating chemical structural formula from ChemDraw files or SMILES notations using Open Babel

This package offers a new choice for chemists who need chemical structures in their LaTeX documents.
With this package you can insert chemical structural formulas into your PDF files easily with the help of Open Babel and Inkscape.

Various chemical formats are allowed for input: for example, .cdx, .mol, .smi

### Package Contents

 - chemobabel.sty: Package itself
 - chemobabel-extract.tex: Macros for extracting \chemobabel and \smilesobabel commands
 - chemobabel.pdf: Basic usage (source: chemobabel.tex)
 - example-en.pdf: Examples in English (source: example-en.tex)
 - example-ja.pdf: Examples in Japanese (source: example-ja.tex)

Sample ChemDraw files and MDL Molfiles are also included.

### References

See http://acetaminophen.hatenablog.com/entry/2014/12/08/053519 for detail. (Sorry in Japanese)

This work is based on a lot of resources published online:
  - Noel O'Boyle http://baoilleach.blogspot.jp/
  - Jakob Lykke Andersen http://imada.sdu.dk/~jlandersen/
  - TeX Forum http://oku.edu.mie-u.ac.jp/tex/

### License

This package is distributed under the BSD 2-Clause License.
See license.txt.

### Version History

 - 2014-12-01 Version 0.1  (First commit)
 - 2014-12-02 Version 0.2  (Add a parameter to be passed to obabel; the number of parameters changed!)
 - 2014-12-07 Version 0.3  (Change name of package: chemobabel.sty; add \chemobabel command)
 - 2014-12-09 Version 0.4  (Fix a bug: extra blank spaces at the end of some lines are removed)
 - 2014-12-20 Version 0.5  (Add an option: "extract" option can load the macro easily)
 - 2015-06-29 Version 0.6  (Improve warning messages)
 - 2015-08-26 Version 0.7  (Solve `\catcode`-related problems)
 - 2015-08-27 Version 0.8  (Improve `\smilesobabel` a little)
 - 2015-08-28 Version 0.9  (Exclude e-TeX dependency in `\smilesobabel`)
 - 2015-08-29 Version 0.9a (Improve `\chemobabel` a little)

--------------------
Hironobu YAMASHITA (aka. "Acetaminophen" or "@aminophen")
http://acetaminophen.hatenablog.com/

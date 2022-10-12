chemobabel
==========

LaTeX package for generating chemical structural formula from
ChemDraw files or SMILES notations using Open Babel.

This package offers a new choice for chemists who need
chemical structures in LaTeX documents.
With this package you can insert chemical structural formulas
into your documents easily with the help of Open Babel.

Various chemical formats are allowed for input,
for example, `.cdx`, `.mol` and `.smi`.

## Package Contents

 - chemobabel.sty: Package itself; provides `\chemobabel` and `\smilesobabel`
 - chemobabel-{en,ja}.pdf: Basic usage (source: chemobabel.dtx)
 - example-en.{tex,pdf}: Examples in English
 - example-ja.{tex,pdf}: Examples in Japanese

Sample ChemDraw files and MDL Molfiles are also included.

## Requirements

To use this LaTeX package, it is necessary to enable execution
of the following external commands via `latex -shell-escape`.

 - `obabel` (Open Babel)
 - `inkscape` or `rsvg-convert` (for SVG -> PDF/EPS conversion)
 - `pdfcrop` or `ps2eps` (optional; for cropping large margins of PDF/EPS)

## License

This package is distributed under the BSD 2-Clause License.
See [LICENSE](./LICENSE).

## Repository

The bundle is maintained on GitHub:
  https://github.com/aminophen/chemobabel

## References

See http://acetaminophen.hatenablog.com/entry/2014/12/08/053519
for detail. (Sorry in Japanese)

This work is based on a lot of resources published online:
  - Noel O'Boyle http://baoilleach.blogspot.jp/
  - Jakob Lykke Andersen http://imada.sdu.dk/~jlandersen/
  - TeX Forum http://oku.edu.mie-u.ac.jp/tex/

## Release Date

$RELEASEDATE

--------------------
Hironobu YAMASHITA (aka. "Acetaminophen" or "@aminophen")
http://acetaminophen.hatenablog.com/

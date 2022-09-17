DOCTARGET = chemobabel-doc-en chemobabel-doc-ja \
	chemobabel-example-en chemobabel-example-ja
PDFTARGET = $(addsuffix .pdf,$(DOCTARGET))
KANJI = -kanji=utf8
#FONTMAP = -f ipaex.map -f ptex-ipaex.map
FONTMAP = -f haranoaji.map -f ptex-haranoaji.map
TEXMF = $(shell kpsewhich -var-value=TEXMFHOME)

all: $(PDFTARGET)

chemobabel-doc-en.tex: chemobabel.dtx
	lualatex chemobabel.ins
chemobabel-doc-ja.tex: chemobabel.dtx
	lualatex chemobabel.ins
chemobabel-doc-en.pdf: chemobabel.sty chemobabel-doc-en.tex
	lualatex -shell-escape chemobabel-doc-en.tex
	lualatex -shell-escape chemobabel-doc-en.tex
	lualatex -shell-escape chemobabel-doc-en.tex
chemobabel-doc-ja.pdf: chemobabel.sty chemobabel-doc-ja.tex
	lualatex -shell-escape chemobabel-doc-ja.tex
	lualatex -shell-escape chemobabel-doc-ja.tex
	lualatex -shell-escape chemobabel-doc-ja.tex
chemobabel-example-en.pdf: chemobabel.sty chemobabel-example-en.tex
	pdflatex -shell-escape chemobabel-example-en.tex
	pdflatex -shell-escape chemobabel-example-en.tex
chemobabel-example-ja.pdf: chemobabel.sty chemobabel-example-ja.tex
	platex -shell-escape chemobabel-example-ja.tex
	platex -shell-escape chemobabel-example-ja.tex
	dvipdfmx chemobabel-example-ja.dvi

.PHONY: install clean
install:
	mkdir -p ${TEXMF}/doc/latex/chemobabel
	cp ./LICENSE ${TEXMF}/doc/latex/chemobabel/
	cp ./README.md ${TEXMF}/doc/latex/chemobabel/
	cp ./*.pdf ${TEXMF}/doc/latex/chemobabel/
	cp ./*.tex ${TEXMF}/doc/latex/chemobabel/
	mkdir -p ${TEXMF}/tex/latex/chemobabel
	cp ./*.sty ${TEXMF}/tex/latex/chemobabel/
clean:
	rm -f *.dvi $(PDFTARGET)
	rm -rf chemobabelimgdir

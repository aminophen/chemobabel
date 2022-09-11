KANJI = -kanji=utf8
#FONTMAP = -f ipaex.map -f ptex-ipaex.map
FONTMAP = -f haranoaji.map -f ptex-haranoaji.map
TEXMF = $(shell kpsewhich -var-value=TEXMFHOME)

all: chemobabel.pdf chemobabel-example-en.pdf chemobabel-example-ja.pdf

chemobabel.pdf: chemobabel.sty chemobabel.tex
	lualatex -shell-escape chemobabel.tex
	lualatex -shell-escape chemobabel.tex
	lualatex -shell-escape chemobabel.tex
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
	rm -f *.dvi *.pdf

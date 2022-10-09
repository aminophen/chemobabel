DOCTARGET = chemobabel-en chemobabel-ja \
	example-en example-ja
PDFTARGET = $(addsuffix .pdf,$(DOCTARGET))
KANJI = -kanji=utf8
#FONTMAP = -f ipaex.map -f ptex-ipaex.map
FONTMAP = -f haranoaji.map -f ptex-haranoaji.map
TEXMF = $(shell kpsewhich -var-value=TEXMFHOME)

all: $(PDFTARGET)

chemobabel-en.tex: chemobabel.dtx
	lualatex chemobabel.ins
chemobabel-ja.tex: chemobabel.dtx
	lualatex chemobabel.ins
chemobabel-en.pdf: chemobabel.sty chemobabel-en.tex
	obabel -V >obversion.txt
	lualatex -shell-escape chemobabel-en.tex
	lualatex chemobabel-en.tex
	lualatex chemobabel-en.tex
chemobabel-ja.pdf: chemobabel.sty chemobabel-ja.tex
	obabel -V >obversion.txt
	lualatex -shell-escape chemobabel-ja.tex
	lualatex chemobabel-ja.tex
	lualatex chemobabel-ja.tex
example-en.pdf: chemobabel.sty example-en.tex
	pdflatex -shell-escape example-en.tex
	pdflatex example-en.tex
example-ja.pdf: chemobabel.sty example-ja.tex
	platex -shell-escape example-ja.tex
	platex example-ja.tex
	dvipdfmx example-ja.dvi

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

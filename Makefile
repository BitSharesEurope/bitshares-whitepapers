PDFLATEXOPTS=""
TMPFILES = *.aux *.log *.dvi *.bbl *.blg *.mtc* *.maf \
          *.cb *.toc *.out *.lof *.lot *.los *.lom *.tmp \
          *.adx *.idx *.ind *.ilg *.and *.snm *.nav \
          $(shell find . -name "*~") \
          $(shell find . -name "*.bak") \
          $(shell find . -name "*.backup") \
          $(shell find . -name "auto")

SRC=$(wildcard bitshares-*.tex)
BIBS=$(wildcard *.bib) $(wildcard *.bst)

all: $(SRC:.tex=.pdf)

%.pdf: %.tex %.bbl
	@pdflatex $(PDFLATEXOPTS) $<
	@pdflatex $(PDFLATEXOPTS) $<

%.aux: %.tex
	@pdflatex $(PDFLATEXOPTS) $<

%.bbl: %.aux
	@bibtex $(shell basename $< .tex)

clean:
	@rm -rf $(TMPFILES)

PDFLATEXOPTS=""
TMPFILES = *.aux *.log *.dvi *.bbl *.blg *.mtc* *.maf \
          *.cb *.toc *.out *.lof *.lot *.los *.lom *.tmp \
          *.adx *.idx *.ind *.ilg *.and *.snm *.nav \
          $(shell find . -name "*~") \
          $(shell find . -name "*.bak") \
          $(shell find . -name "*.backup") \
          $(shell find . -name "auto")

SRC=$(wildcard *.tex)
BIBS=$(wildcard *.bib) $(wildcard *.bst)

all: $(SRC:.tex=.pdf)

%.pdf: %.tex
	@pdflatex $(PDFLATEXOPTS) $<
	@pdflatex $(PDFLATEXOPTS) $<

clean:
	@rm -rf $(TMPFILES) *.pdf

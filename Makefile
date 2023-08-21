PROJ = poster
REF = reference.bib
TEX = $(PROJ).tex
PDF = $(PROJ).pdf

all: $(PDF)

$(PDF): $(TEX) $(REF)
	xelatex $<
	biber $(PROJ)
	xelatex $<
	xelatex $<

clean-misc:
	rm -rf *.aux *.bcf *.run.xml *.blg *.out *.bbl *.log

clean: clean-misc
	rm -rf *.pdf

.PHONY: all clean-misc clean

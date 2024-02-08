all: Thesis.pdf

clean:
	latexmk -CA

Thesis.pdf: Thesis.tex ../bibliography.bib Graphs
	latexmk \
		-pdf \
		-xelatex \
    -shell-escape \
    -file-line-error \
    -halt-on-error \
    -interaction=nonstopmode \
    Thesis.tex

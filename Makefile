PYGMENTS_VENV = salman

all: Thesis.pdf

clean:
	latexmk -CA

Thesis.pdf: Thesis.tex ../bibliography.bib
	source activate $(PYGMENTS_VENV) \
	&& latexmk \
		-pdf \
		-xelatex \
    -shell-escape \
    -file-line-error \
    -halt-on-error \
    -interaction=nonstopmode \
    $^ \
	&& source deactivate

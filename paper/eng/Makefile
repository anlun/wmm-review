all: main.tex ../common/main.bib
	pdflatex -shell-escape main.tex
	bibtex main
	pdflatex -shell-escape main.tex
	pdflatex -shell-escape main.tex

clean:
	rm *.aux *.blg *.bbl *.log *.vtc *.out main.pdf 

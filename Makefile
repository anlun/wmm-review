all: main.tex main.bib
	pdflatex -shell-escape main.tex
	bibtex main
	pdflatex -shell-escape main.tex
	pdflatex -shell-escape main.tex

clean:
	rm *.aux *.blg *.log *.vtc *.out main.pdf 

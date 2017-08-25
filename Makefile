.PHONY: all paper.pdf extended.pdf clean cameraready

all: paper.pdf

paper.pdf: paper.tex main.bib
	pdflatex paper
	bibtex -min-crossrefs=10 paper 
	pdflatex paper
	pdflatex paper paper.pdf

# extended.pdf: paper.tex timestamps.tex introduction.tex highlevel.tex examples.tex proof.tex semanticsARM.tex semanticsARMt.tex semanticsProm.tex appendix.tex appendixProofs.tex references.bib proceedings.bib
# 	pdflatex --jobname=paper-extended "\def\extflag{}\input{paper}"
# 	bibtex paper-extended -min-crossrefs=10
# 	pdflatex --jobname=paper-extended "\def\extflag{}\input{paper}"
# 	pdflatex --jobname=paper-extended "\def\extflag{}\input{paper}"

# cameraready:
# 	latexpand paper.tex | sed 's/capitalise]{cleveref}/capitalise,poorman]{cleveref}/' > _camera_temp_.tex
# 	pdflatex _camera_temp_.tex
# 	pdflatex _camera_temp_.tex
# 	sed -f _camera_temp_.sed _camera_temp_.tex > cameraready.tex
# 	rm -f _camera_temp_*
# 	pdflatex cameraready.tex
# 	bibtex -min-crossrefs=10 cameraready
# 	pdflatex cameraready.tex
# 	pdflatex cameraready.tex

clean: 
	rm -f {paper,paper-extended}.{out,dvi,ps,pdf,log} *.{toc,blg,bbl,aux,rel} paper *.log *~ paper.zip *.tar.gz


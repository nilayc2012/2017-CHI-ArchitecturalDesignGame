# make -f Makefile_pdflatex

R = paper
STY = *.cls
TEX = tex/*.tex
FIG = images/samplefigure.pdf

pdf: $(R).pdf 

$(R).bbl: $(R).bib
	pdflatex $(R)
	bibtex $(R)
	pdflatex $(R)

$(R).pdf: *.tex $(STY) $(R).bbl 
	pdflatex $(R)

	
clean:
	rm -f $(R).log $(R).aux $(R).bbl $(R).blg $(R).out $(R).lbl $(R).brf 

clean-pdf:
	rm -f $(R).log $(R).aux $(R).bbl $(R).blg $(R).out $(R).lbl $(R).brf $(R).pdf 

again:
	make clean
	make	
	
all: 
	make clean
	make 

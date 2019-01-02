all: diary

diary:diary.tex
	xelatex diary.tex 
2018: 2018.tex
	xelatex 2018.tex 
clean:
	rm -rf *.log *.out *.aux  *.toc

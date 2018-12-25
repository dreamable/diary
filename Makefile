all: default 

default:*.tex
	xelatex diary.tex 
clean:
	rm *.log *.out *.aux 

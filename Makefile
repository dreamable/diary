all: diary bak

diary:diary.tex
	xelatex diary.tex 
	xelatex diary.tex 
	mv diary.pdf results 
	rm -rf *.log *.out *.aux  *.toc

bak: *
	zip -P 2019diary diary *.tex contents/ results/
	mv diary.zip ~/work/diary/

2018: 2018.tex
	xelatex 2018.tex 
	xelatex 2018.tex 
	mv 2018.pdf results 
	rm -rf *.log *.out *.aux  *.toc

clean:
	rm -rf *.log *.out *.aux  *.toc

all: diary backup

diary:diary.tex
	xelatex diary.tex 
	xelatex diary.tex 
	mv diary.pdf results 
	rm -rf *.log *.out *.aux  *.toc

2018: 2018.tex
	xelatex 2018.tex 
	xelatex 2018.tex 
	mv 2018.pdf results 
	rm -rf *.log *.out *.aux  *.toc

backup: 
	zip -P 2019diary diary *
	mv diary.zip ~/work/diary/

clean:
	rm -rf *.log *.out *.aux  *.toc

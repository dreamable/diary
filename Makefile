all: book report

book:book.tex
	xelatex book.tex 
	xelatex book.tex 
	mv book.pdf results 
	rm -rf *.log *.out *.aux  *.toc
	#open results/book.pdf

report: report.tex
	xelatex report.tex 
	xelatex report.tex 
	mv report.pdf results 
	rm -rf *.log *.out *.aux  *.toc

backup: 
	zip -P <your_password> book *
	mv book.zip <backup_path> 

clean:
	rm -rf *.log *.out *.aux  *.toc

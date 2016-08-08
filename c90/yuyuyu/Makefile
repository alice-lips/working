do:
	platex main.tex
	dvipdfmx main
	pdftk main.pdf cat output book.pdf

clean:
	rm -f *.aux *.dvi *.log *.out main.pdf

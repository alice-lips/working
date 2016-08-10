main.pdf:
	platex main.tex
	dvipdfmx main

book.pdf:
	pdftk main.pdf cat output book.pdf

clean:
	rm -f *.aux *.dvi *.log *.out main.pdf

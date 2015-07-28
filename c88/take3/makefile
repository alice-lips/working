do:
	platex main.tex
	dvipdfmx main
	pdftk preface/pre.pdf  main.pdf cat output book.pdf

clean:
	rm -f *.aux *.dvi *.log *.out

all: book.pdf

book.pdf: face.pdf main.pdf colophon.pdf
	pdftk $^ cat output $@

main.pdf: main.tex cympfh/index.tex himono/index.tex
	platex main.tex
	dvipdfm main

colophon.pdf: colophon.tex
	platex colophon.tex
	dvipdfmx colophon

face.pdf: resources/face.jpg
	convert -geometry 2078x2965! $^ $@

clean:
	rm -f *.aux *.dvi *.log *.out main.pdf colophon.pdf face.pdf

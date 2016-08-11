all: book.pdf

book.pdf: face.pdf main.pdf tail.pdf
	pdftk $^ cat output $@

main.pdf: main.tex toc.tex cympfh/index.tex himono/index.tex afterword.tex
	platex main.tex
	dvipdfm main

tail.pdf: tail.tex
	platex tail.tex
	dvipdfmx tail

face.pdf: resources/face.jpg
	convert -geometry 2078x2965! $^ $@

clean:
	rm -f *.aux *.dvi *.log *.out main.pdf tail.pdf face.pdf

all: colophon.pdf
	pdftk main.pdf colophon.pdf cat output AA2.pdf

colophon.pdf: colophon.tex
	platex colophon.tex
	dvipdfmx colophon

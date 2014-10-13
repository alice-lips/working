do:
	cat `cat list` > all.md
	pandoc -i all.md -o content.tex
	sed -i 's/\[<+->\]//g' content.tex
	platex main.tex
	dvipdfmx main
	rm *.dvi *.log *.aux

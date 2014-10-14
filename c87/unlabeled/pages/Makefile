do:
	cat `cat list` > all.md
	pandoc -s -i all.md -o main.tex
	sed -i -e 's/\[<+->\]//g' -e 's/．/。/g' \
		-e 's/{article}/{book}/' \
		main.tex
	platex main.tex
	dvipdfmx main
	rm *.dvi *.log *.aux

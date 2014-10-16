do:
	cat `cat pages/list | sed 's#^#pages/#'` > main.md
	pandoc -s -i main.md -o main.tex
	sed -i -e 's/\[<+->\]//g' -e 's/．/。/g' \
		-e 's/{article}/{book}/' \
		main.tex
	platex main.tex
	dvipdfmx main
	rm main.md main.tex
	rm *.dvi *.log *.aux *.out

git:
	git add -A
	git commit -m "`date`"
	git push

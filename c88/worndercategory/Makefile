LIST=TODO.md title.md intro.md 1.md

book:
	pandoc -s -i book.md -o book.tex
	sed -i -e '1 s/article/jbook/' book.tex
	platex book.tex
	dvipdfmx book
	rm book.aux book.dvi book.log book.out book.tex

do:
	cat $(LIST) | sed -e 's/、/, /g' -e 's/。/. /g' -e 's/ $$//g' -e 's/$$/  /' > book.md

git:
	git add -A .
	git commit -m "`date`"
	git push

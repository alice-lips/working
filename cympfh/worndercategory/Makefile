LIST=TODO.md title.md intro.md 1.md

do:
	cat $(LIST) | sed -e 's/、/, /g' -e 's/。/. /g' -e 's/ $$//g' -e 's/$$/  /' > main.md

git:
	git add -A .
	git commit -m "`date`"
	git push

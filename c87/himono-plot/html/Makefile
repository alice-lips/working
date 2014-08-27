all: lib/text.js lib/game.js lib/color.js lib/images.js lib/size.js

%.js: %.coffee
	coffee -c $^

lib/text.coffee: ../All-apologies.txt
	echo "window.texts = [" > $@
	cat ../All-apologies.txt | nkf | sed 's/^\(.*\)$$/  "\1"/' >> $@
	echo "]" >> $@

clean:
	rm lib/text.coffee lib/*.js

all: lib/text.js lib/game.js lib/color.js lib/images.js include/vnc.js

%.js: %.coffee
	coffee -c $^

lib/text.coffee: ../All-apologies.txt
	echo "window.texts = [" > $@
	cat ../All-apologies.txt | nkf | sed 's/"/&quot;/g' | sed 's/^\(.*\)$$/  "\1"/' >> $@
	echo "]" >> $@

clean:
	rm lib/text.coffee lib/*.js

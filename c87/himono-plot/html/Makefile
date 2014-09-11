all: lib/pages.js lib/vnc.js

lib/pages.js: ./tools/seisho2pages ../All-apologies-seisho.txt
	./tools/seisho2pages ../All-apologies-seisho.txt lib/pages.js

scripts=lib/color.coffee lib/draw_load.coffee lib/dom.coffee lib/load_img.coffee lib/main.coffee lib/vnc.coffee
lib/vnc.js: $(scripts)
	coffee -j $@ -c $(scripts)

clean:
	rm lib/*.js

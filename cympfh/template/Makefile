do:
	cd preface; make
	cd inner; make
	cd colophon; make
	pdftk preface/preface.pdf inner/main.pdf colophon/colophon.pdf cat output book.pdf

open: do
	zathura book.pdf &

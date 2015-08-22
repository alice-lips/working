do:
	cd preface; make
	cd inner; make
	pdftk preface/preface.pdf inner/main.pdf cat output book.pdf

open: do
	zathura book.pdf &

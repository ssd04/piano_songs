
# ####################
# Latex
# ####################

f = main

run:
	latexmk ${f}.tex

pdf:
	zathura ${f}.pdf

html:
	pdflatex ${f}.tex
	htlatex ${f}.tex

install_deps:
	sudo apt-get install \
		zathura

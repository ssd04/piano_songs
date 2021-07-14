
# ####################
# Latex
# ####################

f = main

setup:
	mkdir -p images

run:
	latexmk ${f}.tex

pdf:
	zathura ${f}.pdf

html:
	pdflatex ${f}.tex
	htlatex ${f}.tex

install_deps:
	sudo apt-get install biber \
		texlive-bibtex-extra \
		texlive-latex-extra \
		texlive-xetex \
		texlive-science

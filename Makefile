pdf:
	pdflatex -synctex=1 -interaction=nonstopmode --shell-escape resumen.tex

png: pdf
	convert   -alpha remove -alpha off -quality 100 -density 150   -sharpen 0x1.0 -verbose resumen.pdf resumen-imagenes/resumen.png

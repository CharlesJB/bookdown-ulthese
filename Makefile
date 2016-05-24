TARGET_PDF=_book/These.pdf

.PHONY: all pdf

all: pdf

pdf: $(TARGET_PDF)
	
_book/These.pdf: template/template_ulthese.latex index.Rmd [0-9][0-9]_*.Rmd
	Rscript --vanilla -e \
	'library(bookdown); render_book("index.Rmd", output_format = "bookdown::pdf_book")'

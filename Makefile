TARGET_PDF=_book/These.pdf

.PHONY: all pdf

all: pdf

pdf: $(TARGET_PDF)
	
_book/These.pdf: template/template_ulthese.latex
	Rscript --vanilla -e \
	'library(bookdown); render_book("index.Rmd", output_format = "bookdown::pdf_book")'

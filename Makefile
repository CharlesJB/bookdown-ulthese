.PHONY: pdf

pdf: _book/These.pdf
	Rscript --vanilla -e \
	'library(bookdown); render_book("index.Rmd", output_format = "bookdown::pdf_book")'

TARGET_PDF=_book/These.pdf
TARGET_HTML=_book/index.html

FILE_TEMPLATE=template/template_ulthese.latex
FILES_RMD=$(shell ls index.Rmd [0-9][0-9]_*.Rmd)

.PHONY: all pdf html

all: pdf html

pdf: $(TARGET_PDF)

html: $(TARGET_HTML)

$(TARGET_HTML): $(FILE_TEMPLATE) $(FILES_RMD)
	Rscript --vanilla -e \
	'library(bookdown); render_book("index.Rmd", output_format = "bookdown::gitbook")'
	
$(TARGET_PDF): $(FILE_TEMPLATE) $(FILES_RMD)
	Rscript --vanilla -e \
	'library(bookdown); render_book("index.Rmd", output_format = "bookdown::pdf_book")'

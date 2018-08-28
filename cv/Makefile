PREFIX?=.

DOCS_DIR=$(PREFIX)/docs

build:
	pandoc -s -o cv.pdf cv.md
	pandoc -s -o cv.html cv.md
	pandoc -s -o cv.docx cv.md

clean:
	rm cv.pdf
	rm cv.html
	rm cv.docx

install:
	mkdir -p $(DOCS_DIR)
	cp cv.pdf $(DOCS_DIR)
	cp cv.html $(DOCS_DIR)
	cp cv.docx $(DOCS_DIR)

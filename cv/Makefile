PREFIX?=.

DOCS_DIR=$(PREFIX)/docs

build:
	pandoc -s -o cv.pdf cv.md

clean:
	rm cv.pdf

install:
	mkdir -p $(DOCS_DIR)
	cp cv.pdf $(DOCS_DIR)

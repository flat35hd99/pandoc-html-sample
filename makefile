PANDOC=pandoc

MD=$(shell ls src/*.md)
HTML=$(MD:src/%.md=dist/%.html)

all: directory $(HTML)

directory:
	mkdir -p dist

dist/%.html: src/%.md
	$(PANDOC) -s --toc -o $@ $^

clean:
	rm -rf dist

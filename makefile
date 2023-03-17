PANDOC=pandoc

all: directory dist/index.html

directory:
	mkdir -p dist

dist/index.html: src/index.md
	$(PANDOC) -s -o $@ $^

clean:
	rm -rf dist

.PHONY: all build pdf epub mobi review update clean

all: build

build:
	gitbook build .
	rsync -rv --delete-before --exclude '.nojekyll' _book/ web/

pdf:
	gitbook pdf .

epub:
	gitbook epub .

mobi:
	gitbook mobi .

review:
	open _book/index.html

update:
	git pull origin develop

clean:
	-rm -rf _book/ _books/ book.epub book.mobi book.pdf

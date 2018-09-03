all: build

deps:
	cargo install mdbook mdbook-linkcheck

serve:
	mdbook serve

build:
	mdbook build

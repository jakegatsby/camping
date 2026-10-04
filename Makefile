SHELL := /bin/bash
MAKEFLAGS += --always-make


all: build publish view-live


build:
	pandoc README.md -f gfm -o index.html --metadata title="Camping Checklist" --template=template.html


publish:
	git add -A; git commit -m "$$(date -Is)"; git push


view-live:
	firefox https://jakegatsby.github.io/camping/

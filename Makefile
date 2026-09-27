SHELL := /bin/bash
MAKEFLAGS += --always-make


view-live:
	firefox https://jakegatsby.github.io/camping/


build:
	pandoc README.md -s \
	  --metadata title="Camping Checklist" \
	  -M header-includes='<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.min.css">' \
	  -o index.html

publish: build
	git add -A; git commit -m "$$(date -Is)"; git push


all: publish view-live

SHELL := /bin/bash
MAKEFLAGS += --always-make


view-live:
	firefox https://jakegatsby.github.io/camping/


build:
	pandoc README.md -o index.html --metadata title="Camping Checklist" --template=template.html


publish:
	git add -A; git commit -m "$$(date -Is)"; git push


all: build publish view-live

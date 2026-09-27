SHELL := /bin/bash
MAKEFLAGS += --always-make


view-live:
	firefox https://jakegatsby.github.io/camping/

publish:
	git add -A; git commit -m "$$(date -Is)"; git push


all: publish view-live

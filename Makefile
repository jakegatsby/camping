SHELL := /bin/bash
MAKEFLAGS += --always-make


publish:
	git add -A && git commit -m $$(date -Is) && git push


view-live:
	firefox https://jakegatsby.github.io/camping/


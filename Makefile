.PHONY: default update update-all all
default: all ;

update:
	git pull origin main
	git submodule update --init

update-all: update
	git submodule foreach git pull origin main
	git submodule foreach git checkout main

all: update-all
SNAME ?= test
USERNAME ?= elswork
NAME ?= $(USERNAME)/$(SNAME)
VER ?= `cat VERSION`
BASE ?= latest
BASENAME ?= alpine:$(BASE)
AUTHOR ?= Eloy Lopez
MANTAINER ?= $(AUTHOR) <elswork@gmail.com>
VENDOR ?= Deft Work
MYURL ?= https://deft.work
MYURL_DESCR ?= Deft.Work my personal blog
SPONSORURL ?= https://github.com/sponsors/elswork
PARAM ?= someparameter

# HELP
# This will output the help for each task

.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

# Main Menu

creadir: ## Create Directory 
	mkdir -p ../$(SNAME)
licensefile: ## Create license file
	cat sample/LICENSE \
	| sed "s/\[year\]/`date +%Y`/g" \
	| sed "s/\[fullname\]/$(AUTHOR)/g" \
	> ../$(SNAME)/LICENSE
versionfile: ## Create version file
	cat sample/VERSION > ../$(SNAME)/VERSION
makefile: ## Create Makefile
	cat sample/Makefile \
	| sed "s/\[SNAME\]/$(SNAME)/g" \
	| sed "s/\[USERNAME\]/$(USERNAME)/g" \
	| sed "s/\[BASENAME\]/$(BASENAME)/g" \
	| sed "s/\[PARAM\]/$(PARAM)/g" \
	> ../$(SNAME)/Makefile
readmefile: ## Create README.md file
	cat sample/README.md \
	| sed "s/\[SNAME\]/$(SNAME)/g" \
	| sed "s/\[USERNAME\]/$(USERNAME)/g" \
	| sed "s#\[MYURL\]#$(MYURL)#g" \
	| sed "s/\[MYURL_DESCR\]/$(MYURL_DESCR)/g" \
	| sed "s#\[SPONSORURL\]#$(SPONSORURL)#g" \
	| sed "s/\[PARAM\]/$(PARAM)/g" \
	> ../$(SNAME)/README.md
dockerfile: ## Create Dockerfile file
	cat sample/Dockerfile \
	| sed "s/\[SNAME\]/$(SNAME)/g" \
	| sed "s/\[BASENAME\]/$(BASENAME)/g" \
	| sed "s/\[AUTHOR\]/$(AUTHOR)/g" \
	| sed "s/\[MANTAINER\]/$(MANTAINER)/g" \
	| sed "s/\[VENDOR\]/$(VENDOR)/g" \
	| sed "s#\[MYURL\]#$(MYURL)#g" \
	> ../$(SNAME)/Dockerfile
all: creadir licensefile versionfile makefile readmefile dockerfile ## Create a new project

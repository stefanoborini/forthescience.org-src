PY?=python
PELICAN?=pelican
PELICANOPTS=

BASEDIR=$(CURDIR)
OUTPUTDIR=$(BASEDIR)/output
PUBLISHCONF=$(BASEDIR)/publishconf.py

GITHUB_PAGES_BRANCH=master

DEBUG ?= 0
ifeq ($(DEBUG), 1)
	PELICANOPTS += -D
endif

all: clean base blog whatever gaia

blog:
	PYTHONPATH=/Users/sbo/Library/Python/3.4/lib/python/site-packages "$(PELICAN)" "$(BASEDIR)/content/blog" -o "$(BASEDIR)/output/blog" -s "$(BASEDIR)/config/blog.py" $(PELICANOPTS)
	cp -r extra/redirect/* "$(OUTPUTDIR)"/blog

whatever:
	PYTHONPATH=/Users/sbo/Library/Python/3.4/lib/python/site-packages "$(PELICAN)" "$(BASEDIR)/content/whatever" -o "$(BASEDIR)/output/whatever" -s "$(BASEDIR)/config/whatever.py" $(PELICANOPTS)

gaia:
	PYTHONPATH=/Users/sbo/Library/Python/3.4/lib/python/site-packages "$(PELICAN)" "$(BASEDIR)/content/gaia" -o "$(BASEDIR)/output/gaia" -s "$(BASEDIR)/config/gaia.py" $(PELICANOPTS)

base:
	cp extra/CNAME "$(OUTPUTDIR)"
	cp extra/index.html "$(OUTPUTDIR)"
	cp extra/gitignore "$(OUTPUTDIR)"/.gitignore
	cp extra/nojekyll "$(OUTPUTDIR)"/.nojekyll

upload: all
	cd "$(OUTPUTDIR)" && git add * && git commit -a -m "sync" && git push

clean:
	cd "$(OUTPUTDIR)" && rm -rf blog whatever gaia

serve:
ifdef PORT
	cd "$(OUTPUTDIR)" && "$(PY)" -m pelican.server $(PORT)
else
	cd "$(OUTPUTDIR)" && "$(PY)" -m pelican.server
endif

devserver:
ifdef PORT
	"$(BASEDIR)/develop_server.sh" restart $(PORT)
else
	"$(BASEDIR)/develop_server.sh" restart
endif

stopserver:
	kill -9 `cat pelican.pid`
	kill -9 `cat srv.pid`
	@echo 'Stopped Pelican and SimpleHTTPServer processes running in background.'

publish:
	"$(PELICAN)" "$(INPUTDIR)" -o "$(OUTPUTDIR)" -s "$(PUBLISHCONF)" $(PELICANOPTS)

github: publish
	ghp-import -m "Generate Pelican site" -b $(GITHUB_PAGES_BRANCH) "$(OUTPUTDIR)"
	git push origin $(GITHUB_PAGES_BRANCH)

help:
	@echo 'Makefile for a pelican Web site                                        '
	@echo '                                                                       '
	@echo 'Usage:                                                                 '
	@echo '   make html                        (re)generate the web site          '
	@echo '   make clean                       remove the generated files         '
	@echo '   make serve [PORT=8000]           serve site at http://localhost:8000'
	@echo '   make devserver [PORT=8000]       start/restart develop_server.sh    '
	@echo '   make stopserver                  stop local server                  '
	@echo '   make ssh_upload                  upload the web site via SSH        '
	@echo '   make rsync_upload                upload the web site via rsync+ssh  '
	@echo '   make dropbox_upload              upload the web site via Dropbox    '
	@echo '   make ftp_upload                  upload the web site via FTP        '
	@echo '   make s3_upload                   upload the web site via S3         '
	@echo '   make cf_upload                   upload the web site via Cloud Files'
	@echo '   make github                      upload the web site via gh-pages   '
	@echo '                                                                       '
	@echo 'Set the DEBUG variable to 1 to enable debugging, e.g. make DEBUG=1 html'
	@echo '                                                                       '


.PHONY: html help clean regenerate serve devserver publish ssh_upload rsync_upload dropbox_upload ftp_upload s3_upload cf_upload github

# Makefile to convert Jupyter notebooks to HTML pages
SHELL=/usr/bin/env /bin/bash

all:	export send

send:	send_zamok
send_zamok:
	CP --exclude=.ipynb_checkpoints --exclude=.git ./ ${Szam}publis/Tutoriel-notebooks-Jupyter-a-Didapro-8-Lille-fevrier-2020/

CONTENT_IPYNB=$(wildcard *.ipynb */*.ipynb)
CONTENT_HTML=$(CONTENT_IPYNB:.ipynb=.html)

list_nb:
	echo $(CONTENT_IPYNB)
list_html:
	echo $(CONTENT_HTML)

html_notebooks:	$(CONTENT_HTML)

%.html:	%.ipynb
	jupyter-nbconvert "$<" --to html

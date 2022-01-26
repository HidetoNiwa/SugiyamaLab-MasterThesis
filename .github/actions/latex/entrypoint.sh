#!/bin/bash

# . = /github/workspace if actions/checkout
set -eux

# build pdf (change if necessary)
platex -kanji=utf8 -synctex=1 -interaction=nonstopmode ./main.tex
pbibtex ./main
platex -kanji=utf8 -synctex=1 -interaction=nonstopmode ./main.tex
platex -kanji=utf8 -synctex=1 -interaction=nonstopmode ./main.tex
dvipdfmx -f ptex-ipa.map -I 24 main.dvi

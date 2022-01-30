#!/bin/sh
## Renderowanie suplementu i opublikowanie na stronie

soelim suplement.tr | sed 's/ \([i|w|z]\) / \1\\~/g' | neatroff -Ffonts -mpost | neatpdf -pa4 > html/suplement.pdf

find krazki -iname '*.png' -o -iname '*.svg' | zip -@ html/krazki.zip

rsync -aP html/ srv1:/srv/www/zhr.niedzwiedzinski.cyou/sprawnosci

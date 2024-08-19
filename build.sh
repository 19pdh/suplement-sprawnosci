#!/bin/sh

if command -v nix-shell; then
    nix-shell -p typst --run "TYPST_FONT_PATHS=fonts typst compile suplement.typ"
else
    TYPST_FONT_PATHS=fonts typst compile suplement.typ
fi

cp suplement.pdf html/suplement.pdf
find krazki -iname '*.png' -o -iname '*.svg' | zip -@ html/krazki.zip
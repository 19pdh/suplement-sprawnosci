#let lay(left, right) = grid(
  columns: 2,
  gutter: 1cm,
  left, 
  right
)

#let tagi(str) = text(fill: rgb("#2b2"))[#str]

#let proba(spr) = lay(
  image(spr.img, width: 3.5cm),
  [= #spr.nazwa
  #spr.tagi

  #spr.opis
  ]
)
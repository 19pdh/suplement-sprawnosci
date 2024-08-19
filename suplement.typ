#import "style.typ": proba
#set document(
  author: "IV PHH Rotunda", 
  title: "Suplement sprawności",
)
#show heading: it => [
  #set text(1.4em, weight: "bold")
  #block(it.body)
]
#set par(justify: true)
#set text(
  font: "Century Gothic",
  size: 11pt
)
#set align(center + horizon)


= Suplement sprawności
IV Poznański Hufiec Harcerzy “Rotunda”


#set align(center + bottom)

Poznań, sierpień 2024

github.com/19pdh/suplement-sprawnosci

#pagebreak()
#set align(left + top)

// ============= SPRAWNOSCI

#include "sprawnosci.typ"
#pagebreak()

// ============= PRÓBY
#import "proby.typ": proby
#align(center)[= Próby]
#v(1cm)

#for p in proby [
  #proba(p)
  #v(0.7cm)
]


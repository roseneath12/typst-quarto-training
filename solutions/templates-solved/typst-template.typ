// typst-template.typ (SOLVED — Exercises 4.1, 4.2, 4.3)

#let article(
  title: none,
  subtitle: none,
  authors: (),
  date: none,
  brand-color: rgb("#8b1f2d"),   // 4.1: new default brand colour
  paper: "a4",
  margin: (x: 2.5cm, y: 3cm),
  fontsize: 11pt,
  body,
) = {

  set page(
    paper: paper,
    margin: margin,
    // 4.2: footer with title (left) and page number (right)
    footer: context [
      #text(size: 9pt, fill: luma(120))[#title]
      #h(1fr)
      #text(size: 9pt, fill: luma(120))[#counter(page).display()]
    ],
  )
  set text(size: fontsize)
  set par(justify: true)
  set heading(numbering: "1.1")

  show heading.where(level: 1): it => block(width: 100%, below: 12pt)[
    #set text(size: 16pt, weight: "bold", fill: brand-color)
    #it
    #v(-6pt)
    #line(length: 100%, stroke: 1pt + brand-color)
  ]

  show emph: set text(fill: brand-color)

  set table(stroke: 0.5pt + luma(180))
  show table.cell.where(y: 0): strong

  align(center)[
    #text(size: 24pt, weight: "bold", fill: brand-color)[#title]

    #if subtitle != none [
      // 4.3: italic, grey, 14pt subtitle
      #text(size: 14pt, style: "italic", fill: luma(120))[#subtitle]
    ]

    #v(4pt)
    #if authors.len() > 0 [
      #text(size: 11pt)[#authors.join(", ")]
    ]
    #if date != none [
      #text(size: 10pt, fill: luma(100))[ · #date]
    ]
  ]
  v(1.5em)

  body
}

// typst-template.typ
// ------------------------------------------------------------------
// Pure Typst. Defines the `article` function that lays out the whole
// document. No Quarto/Pandoc syntax appears in this file.
// ------------------------------------------------------------------

#let article(
  title: none,
  subtitle: none,
  authors: (),
  date: none,
  brand-color: rgb("#1f6f8b"),   // default brand colour (Exercise 4.1)
  paper: "a4",
  margin: (x: 2.5cm, y: 3cm),
  fontsize: 11pt,
  body,
) = {

  // ---- page & text defaults --------------------------------------
  set page(
    paper: paper,
    margin: margin,
    // Exercise 4.2: add a footer: here
  )
  set text(size: fontsize)
  set par(justify: true)
  set heading(numbering: "1.1")

  // ---- element styling -------------------------------------------
  // Level-1 headings: brand colour with a rule underneath
  show heading.where(level: 1): it => block(width: 100%, below: 12pt)[
    #set text(size: 16pt, weight: "bold", fill: brand-color)
    #it
    #v(-6pt)
    #line(length: 100%, stroke: 1pt + brand-color)
  ]

  // Emphasis picks up the brand colour
  show emph: set text(fill: brand-color)

  // Tables: light stroke, bold header row
  set table(stroke: 0.5pt + luma(180))
  show table.cell.where(y: 0): strong

  // ---- title block ------------------------------------------------
  align(center)[
    #text(size: 24pt, weight: "bold", fill: brand-color)[#title]

    #if subtitle != none [
      // Exercise 4.3: restyle this subtitle
      #text(size: 12pt)[#subtitle]
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

  // ---- the document body -----------------------------------------
  body
}

// typst-show.typ
// ------------------------------------------------------------------
// The glue between Quarto and the template. Pandoc replaces the
// $dollar$ variables below with values from the .qmd YAML header,
// then the whole document body is piped through article().
// ------------------------------------------------------------------

#show: doc => article(
$if(title)$
  title: [$title$],
$endif$
$if(subtitle)$
  subtitle: [$subtitle$],
$endif$
$if(by-author)$
  authors: (
$for(by-author)$
    [$it.name.literal$],
$endfor$
  ),
$endif$
$if(date)$
  date: [$date$],
$endif$
$if(brand-color)$
  brand-color: rgb("$brand-color$"),
$endif$
$if(papersize)$
  paper: "$papersize$",
$endif$
  doc,
)

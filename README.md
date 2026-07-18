# Learning Typst with Quarto in RStudio

A hands-on, self-paced course for producing beautiful PDF documents with
[Typst](https://typst.app/) and [Quarto](https://quarto.org/), entirely from
RStudio. All examples use datasets that ship with base R (`mtcars`, `iris`,
`airquality`, `ToothGrowth`), so there is nothing to download.

## What is Typst, and why should I care?

Typst is a modern typesetting system — think "LaTeX, but fast and readable".
Since Quarto 1.4, Typst ships **bundled inside Quarto**: you do not install
Typst, LaTeX, or anything else. Rendering a `.qmd` to PDF via Typst is
typically 10–100× faster than via LaTeX and the error messages are humane.

## Prerequisites

| Requirement | How to check |
|---|---|
| Quarto ≥ 1.4 | Run `quarto --version` in the RStudio Terminal |
| R + RStudio (recent) | RStudio 2023.12 or later bundles a suitable Quarto |
| R packages: `knitr`, `ggplot2` | `install.packages(c("knitr", "ggplot2"))` |

## Course structure

Work through the modules in order. Each module is a `.qmd` file that you
**open in RStudio and click "Render"** — the document teaches the concepts,
and contains exercises marked with 🏋️ for you to complete directly in the file.

| File | Topic | Time |
|---|---|---|
| `01-getting-started.qmd` | Your first Typst PDF; YAML options (page size, margins, fonts, TOC) | ~30 min |
| `02-typst-syntax.qmd` | Raw Typst blocks; `#set` / `#show` rules; colours, boxes, columns | ~45 min |
| `03-tables-and-figures.qmd` | Tables with `kable()`, figures, cross-references, layout | ~45 min |
| `04-custom-templates.qmd` | Build a reusable corporate template with template partials | ~60 min |
| `exercises/capstone.qmd` | Capstone: build a polished report on `airquality` from scratch | ~60 min |

Worked answers for every exercise are in `solutions/`. Try honestly before
peeking!

## How to use this repo

1. Clone or download it.
2. Open the folder as an RStudio Project (`File → New Project → Existing Directory`),
   or just open the `.qmd` files directly.
3. Open `01-getting-started.qmd` and press **Render** (or `Ctrl/Cmd + Shift + K`).
4. Read the rendered PDF side by side with the source. Do the exercises. Re-render often.

## Sharing with colleagues

The repo is self-contained. To publish it:

```bash
git init
git add .
git commit -m "Typst + Quarto training materials"
git branch -M main
git remote add origin https://github.com/<your-user>/typst-quarto-training.git
git push -u origin main
```

Rendered PDFs and intermediate `.typ` files are excluded by `.gitignore`, so
colleagues always render fresh from source.

## Useful references

- Quarto Typst docs: <https://quarto.org/docs/output-formats/typst.html>
- Typst custom formats in Quarto: <https://quarto.org/docs/output-formats/typst-custom.html>
- Typst language documentation: <https://typst.app/docs/>

Happy typesetting!

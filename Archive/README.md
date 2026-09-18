# Archive

Superseded course files, kept for reference. Nothing here is part of the website.

**Do not put `.Rmd` files in the repository root unless they are site pages.**
`rmarkdown::render_site()` picks up every root-level `.Rmd` and renders it, so a
stray file can break the whole site build.

- `Chap_1_Part_A.Rmd` — the Fall 2020 standalone handout *"Chapter 1, Part A:
  Basics of R Markdown"*, last edited in 2021. Its content now lives in
  `Chapters.Rmd` as **Chapter 2, PART A: Learning the Basics**. It was moved
  here on 2026-09-18 because its YAML nests `highlight: tango` outside
  `pdf_document`, which made `render_site()` fail with
  `object 'highlight' not found` before it ever reached `Chapters.Rmd`.

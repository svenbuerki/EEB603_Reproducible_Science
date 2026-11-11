# EEB 603 — Reproducible Science

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.24139921.svg)](https://doi.org/10.5281/zenodo.24139921)

## Overview

This repository contains all course materials, code, data, and teaching resources for **EEB 603 — Reproducible Science**, taught by **Dr. Sven Buerki** at Boise State University.

The course is part of the **Ecology, Evolution and Behavior (EEB) Ph.D. program** and is designed for graduate students in that program and in Biological Sciences. It equips students with the theoretical knowledge and bioinformatics tools needed to make research transparent, reproducible and efficient — from data management and reproducible code through to communicating results.

The primary goal of this repository is to provide an open, version-controlled source for the syllabus, schedule, chapters, tutorials, assignments, evaluation rubrics, R Markdown documents, scripts, and example datasets used in the course.

This repository is also, deliberately, an example of what the course teaches: every document students read is written in R Markdown, built from source, and version-controlled here.

The associated course website is published via GitHub Pages:
🔗 https://svenbuerki.github.io/EEB603_Reproducible_Science

---

## Instructor

**Dr. Sven Buerki**
Boise State University
Email: svenbuerki@boisestate.edu

---

## Contents

This repository includes the following key directories and files:

### Course website (five tabs, all built from R Markdown)

- `index.Rmd` + `index.html` — **Syllabus** (home page)
- `Timetable.Rmd` + `Timetable.html` — **Schedule**: deadlines, point allocations, and the session-by-session plan
- `Assignments.Rmd` + `Assignments.html` — **Assignments**: every evaluation form and rubric, published in advance
- `Chapters.Rmd` + `Chapters.html` — **Chapters**: course content and hands-on tutorials
- `Resources.Rmd` + `Resources.html` — **Resources**: additional reading and links
- `_site.yml` — Site configuration and navigation bar

### Assessment

- `Evaluation_Forms/` — The five evaluation forms and rubrics, as `.Rmd` sources and rendered PDFs
  - `render_forms.R` — Rebuilds all five forms and checks that each rubric's points still sum to its stated total
  - `_form_preamble.tex` — Shared LaTeX preamble that keeps the forms visually consistent

### Supporting material

- `Data/` — Datasets used in class examples, and the CSV driving the course schedule
- `Exercises/` — Exercises accompanying the chapters
- `Project_ID/` — Worked example of a reproducible project structure
- `R_functions/` — User-defined R functions used in the course
- `Figures/` and `Images/` — Figures and diagrams referenced in course materials

### Build scripts and bibliography

- `make_syllabus_pdf.R` — Generates the downloadable PDF syllabus from `index.Rmd`
- `index_syllabus_pdf.pdf` — **Generated** PDF syllabus (do not edit by hand). Its source,
  `_index_syllabus_pdf.Rmd`, is written by the script above. The leading underscore keeps
  `rmarkdown::render_site()` from treating it as a site page.
- `Bibliography_Reproducible_Science_2.bib`, `packages.bib` — Bibliographies
- `AmJBot.csl` — Citation style

---

## Getting Started

To explore the course content:

1. Visit the published [course website](https://svenbuerki.github.io/EEB603_Reproducible_Science).
2. Or browse the rendered HTML files in this repository (e.g. `index.html`, `Timetable.html`, `Assignments.html`).
3. If you wish to build or modify documents locally, install R and RStudio, clone this repository, and open the `.Rproj` file in your local clone.

### Running R Markdown Documents

To render an R Markdown file (e.g. to update a chapter draft):

1. Clone this repository locally.
2. Open `EEB603_Reproducible_Science.Rproj` in RStudio.
3. Ensure the required R packages are installed — these are listed at the top of each `.Rmd` file, and the syllabus has an [installation section](https://svenbuerki.github.io/EEB603_Reproducible_Science/index.html#Rpack).
4. Knit the document to HTML or PDF from within RStudio.

---

## Contributing

This repository is maintained by the course instructor. Students enrolled in the course should **not push changes to the main branch**. If you identify errors or improvements, please [open an issue](https://github.com/svenbuerki/EEB603_Reproducible_Science/issues/new/choose). A free GitHub account is all that is required, and reporting a problem clearly and reproducibly is itself part of the course. For anything personal — grades, extensions, accommodations — email the instructor instead, as issues are public.

---

## License

**Two licences apply, because this repository holds two kinds of thing.**

| What | Licence | Full terms |
|---|---|---|
| **Code**: scripts, R chunks, functions, the site build | **GNU Affero General Public License v3.0** | [`LICENSE.md`](LICENSE.md) |
| **Prose and teaching material**: chapter text, figures, slides, rubrics, schedule | **Creative Commons Attribution 4.0 International (CC BY 4.0)** | [`LICENSE-CC-BY-4.0.md`](LICENSE-CC-BY-4.0.md) |

**Which version of the AGPL.** The code is licensed under the GNU Affero General Public License, **either version 3 of the License, or (at your option) any later version**.

**Why two.** A software licence settles questions prose does not raise, such as what happens to derived works and whether any warranty is given, while a Creative Commons licence is the instrument readers and journals expect for written material. Applying one licence to both would mean using the wrong instrument for half the repository, which is the distinction the course itself teaches in [Creative Commons Licenses](https://svenbuerki.github.io/EEB603_Reproducible_Science/Chapters.html#CClicenses).

**What CC BY 4.0 asks of you** if you reuse the teaching material: credit the author, link the licence, and say if you changed anything. You may use it commercially and you may adapt it. The example project in [`Project_ID/`](Project_ID/) carries its own `LICENSE` file.

---

## Citation

**This repository is archived on Zenodo and has a DOI.** Cite it with:

> Buerki, S. (2026). *EEB 603 Reproducible Science: course materials*. Zenodo. https://doi.org/10.5281/zenodo.24139921

That is the **concept DOI**, which always resolves to the most recent archived release. Use the
**version DOI** when it matters exactly which release you used: `v1.0.1` is
[`10.5281/zenodo.24139922`](https://doi.org/10.5281/zenodo.24139922).

**GitHub's "Cite this repository" button** on this page reads [`CITATION.cff`](CITATION.cff) and will generate BibTeX or APA for you.

Ready-to-paste BibTeX, and the reason the `csl` you choose matters, are on the course website under [**How to Cite These Materials**](https://svenbuerki.github.io/EEB603_Reproducible_Science/Resources.html#howtocite).

---

Thank you for your interest in **Reproducible Science**!

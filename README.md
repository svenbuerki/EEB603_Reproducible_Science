# EEB 603 — Reproducible Science

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
- `index_syllabus_pdf.Rmd` + `.pdf` — **Generated** PDF syllabus (do not edit by hand)
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

This repository is maintained by the course instructor. Students enrolled in the course should **not push changes to the main branch**. If you identify errors or improvements, please contact the instructor or open a GitHub Issue.

---

## License

The material in this repository is released under the **GNU Affero General Public License v3.0**. Please see [`LICENSE.md`](LICENSE.md) for the full terms.

---

## Citation

If you use materials from this repository in your own teaching or research, please cite the course appropriately, with links back to this repository and the course website.

---

Thank you for your interest in **Reproducible Science**!

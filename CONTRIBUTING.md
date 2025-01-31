# Contributing to the Anki manual

## Local development

anki-manual is built using [mdBook](https://rust-lang.github.io/mdBook/), a Rust-based tool for creating webpages using Markdown.

### Install dependencies

In order to use mdBook, please first ensure that you have [Rust](https://www.rust-lang.org/tools/install) installed on your machine.

Next, install mdBook and its pre-processors
```
cargo install mdbook
cargo install mdbook-toc
cargo install mdbook-linkcheck
```

### Develop and preview

To serve anki-manual locally, build the book with

```
mdbook build
```

and then serve anki-manual with

```
mdbook serve --open
```

You can now make changes to the markdown (*.md) files in the `src/` directory and have your changes previewed locally.
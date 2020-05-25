library(rmarkdown)
html_file <- rmarkdown::render("analysis.Rmd")
# Set Word file such that it allows writes.
Sys.chmod("analysis.docx", mode="0666")
word_file <- rmarkdown::render("analysis.Rmd", output_format="papaja::apa6_docx")
# Set Word file to read-only.
Sys.chmod("analysis.docx", mode="0444")


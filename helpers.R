rn <- function(x, n) format(round(x, n), nsmall=n)
r.2 <- function(x) rn(x, 2)

# Used to make output conditional on whether it is "html" or "docx"
out.format <- knitr::opts_knit$get('rmarkdown.pandoc.to')
if (is.null(out.format))
  out.format <- "rstudio-output"

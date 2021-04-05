source("assets/scripts/packages.R")

book_url <- "file:///home/rkelly/Github-RK-MSU/Books/Introduction%20to%20the%20Theory%20of%20Computation,%20Michael%20Sipser,%20Third%20Edition.pdf"

# knitr chunk options ----------------------------------------------------------
# 
knitr::opts_chunk$set(
  #  comment = "#>",
  # collapse = TRUE,
  # message = FALSE,
  # warning = FALSE,
  #cache = TRUE,
  # echo = FALSE, # hide code unless otherwise noted in chunk options
  out.width = "100%",
  fig.align = 'center',
  fig.topcaption=TRUE
  # fig.show = "hold"
)


colorize <- function(x, color) {
  if (knitr::is_latex_output()) {
    sprintf("\\textcolor{%s}{%s}", color, x)
  } else if (knitr::is_html_output()) {
    sprintf("<span style='color: %s;'>%s</span>", color, x)
  } else {
    sprintf("%s",x)
  }
}


newLine <- function() {
  if (knitr::is_latex_output()) {
    sprintf("\newline")
  } else {
    sprintf("<br>")
  }
}


txt.bold <- function(txt) {
  sprintf("**%s**", txt)
}


txt.indent <- function(txt) {
  sprintf("|          %s", txt)
}
# options repos  ----
options(repos = "https://cloud.r-project.org")
# pkgs ----
pkgs <- c("attachment", "broom", "cli", "collateral", "config", "datapasta",
  "data.table", "devtools", "dplyr", "feather", "forcats", "fs", "ggdag",
  "ggplot2", "glue", "haven", "hms", "httpuv", "httr", "janitor", "jsonlite",
  "knitr", "Lahman", "learnr", "lubridate", "markdown", "modelr", "openxlsx",
  "pkgdown", "purrr", "reactable", "reactlog", "readr", "readxl", "remotes",
  "rhub", "rlang", "rmarkdown", "rmdformats", "rsconnect", "rstudioapi",
  "rvest", "scales", "snakecase", "spelling", "stringr", "styler", "testthat",
  "tibble", "tidyr", "usethis", "vroom", "xml2")
# dput(sort(unique(pkgs)))

# install ----
install.packages(pkgs = pkgs)

# renv install ----
renv::install(pkgs)

# renv snapshot ----
renv::snapshot()

# usethis packages ----
# purrr::map(.x = pkgs, usethis::use_package)

# renv update ----
# renv::update(packages = pkgs)

# remotes::install_github('yonicd/covrpage')

# install.packages("datapasta")
# datapasta::vector_paste()

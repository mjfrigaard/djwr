## code to prepare `wu_tbl` dataset goes here
require(vroom)
require(tibble)
wu_raw <- vroom::vroom("inst/extdata/wu_data.csv")
wu_tbl <- tibble::as_tibble(wu_raw)
usethis::use_data(wu_tbl, overwrite = TRUE)

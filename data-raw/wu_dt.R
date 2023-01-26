## code to prepare `wu_dt` dataset goes here
require(data.table)
wu_raw <- data.table::fread(input = "inst/extdata/wu_data.csv")
wu_dt <- data.table::as.data.table(wu_raw)
usethis::use_data(wu_dt, overwrite = TRUE)



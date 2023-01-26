## code to prepare `wu_df` dataset goes here
wu_raw <- utils::read.csv(file = "inst/extdata/wu_data.csv", sep = ",")
wu_df <- as.data.frame(wu_raw)
usethis::use_data(wu_df, overwrite = TRUE)

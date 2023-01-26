testthat::test_that("prep_code() works", {
  tmp_pth <- tempdir()
  prep_code(folder_name = tmp_pth)
  testthat::expect_true(
    object = file.exists(paste0(tmp_pth, "/data.R"))
    )
  testthat::expect_true(
    object = file.exists(paste0(tmp_pth, "/import.R"))
    )
  testthat::expect_true(
    object = file.exists(paste0(tmp_pth, "/model.R"))
    )
  testthat::expect_true(
    object = file.exists(paste0(tmp_pth, "/tidy.R"))
    )
  testthat::expect_true(
    object = file.exists(paste0(tmp_pth, "/visualize.R"))
    )
  testthat::expect_true(
    object = file.exists(paste0(tmp_pth, "/wrangle.R"))
    )
})

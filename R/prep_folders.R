#' good enuff R setup
#'
#' @importFrom readr write_lines
#' @importFrom fs file_create
#' @importFrom utils download.file
#'
#' @param code logical, include results code and files?
#' @param data logical, include data folder and files?
#' @param docs logical, include docs folder and files?
#'
#' @export prep_folders
#'
#' @description prep_folders() is a wrapper around the prep_code(), prep_data(),
#'     and prep_docs() functions. This is intended for an easy setup with a
#'     new project.
prep_folders <- function(code = TRUE, data = TRUE, docs = TRUE) {
  if (code == FALSE & data == TRUE & docs == TRUE) {
    prep_data(show_file = FALSE)
    prep_docs(show_file = FALSE)
  } else if (code == TRUE & data == FALSE & docs == TRUE) {
    prep_code()
    prep_docs(show_file = FALSE)
  } else if (code == TRUE & data == TRUE & docs == FALSE) {
    prep_code()
    prep_data(show_file = FALSE)
  } else {
    prep_code()
    prep_data(show_file = FALSE)
    prep_docs(show_file = FALSE)
  }
  # citation
  fs::file_create("CITATION")
  citation_content <- c("Make the project citable (3e) by including a CITATION file in the project's home directory that describes how to cite this project as a whole, and where to find (and how to cite) any data sets, code, figures, and other artifacts that have their own DOIs.", "\n\n", "Please cite this work as:", "\nMorris, B.D. and E.P. White. 2013. 'The EcoData Retriever:", "improving access to existing ecological data.'PLOS ONE 8:e65848.", "http://doi.org/doi:10.1371/journal.pone.0065848")
  readr::write_lines(x = citation_content, file = "CITATION")
  # requirements
  fs::file_create("requirements.md")
  requirements_content <- c("# Requirements", "===============\n", "Make dependencies and requirements explicit. This is usually done on a per-project rather than per-program basis, i.e., by adding a file called something like requirements.txt to the root directory of the project", "\n\nsource: https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/")
  readr::write_lines(x = requirements_content, file = "requirements.md")
  # LISCENSE
  utils::download.file(
    url = "https://creativecommons.org/publicdomain/zero/1.0/legalcode.txt",
    destfile = "LICENSE")
}

#' Fun script header <(+_+)>
#'
#' @param name
#'
#' @import purrr
#' @import rstudioapi
#' @export fun_hdr
#'
#'
#' @description The fun_hdr() function is similar to the hot keys
#' 'cmd + shift + R' for creating a section header.
#'
#'
#' @examples
#' # use this to create a fun section header in any .R file
#' # with RStudio running...
#' # djwr::fun_hdr("import")
fun_hdr <- function(name) {
    section_header <- paste0("# <(+_+)> ", name, " ––+––+––+––+––+––+––+––––+––+––+––––+––+ ----")
  purrr::map(.x = section_header, .f = rstudioapi::insertText)
}

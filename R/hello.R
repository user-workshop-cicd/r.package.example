#' Print "Hello, World!"
#'
#' This function prints "Hello, World!" to the console.
#'
#' @return nothing
#'
#' @export
#'
#' @examples
#' hello()
hello <- function() {
  print("Hellow, World!")
}

#' Print "Hello, World!" using the `cli` package
#'
#' This function prints "Hello, World!" to the console using the `cli` package.
#'
#' @return nothing
#'
#' @importFrom cli cli_text
#' @export
#'
#' @examples
#' hello_cli()
hello_cli <- function() {
  cli::cli_text("Hello, World!")
}

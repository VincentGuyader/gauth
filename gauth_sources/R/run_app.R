#' run the Shiny Application
#'
#'
#' @export
#' @importFrom shiny shinyApp
#'
#' @examples
#'
#' if (interactive()) {
#'
#'   run_app()
#'
#' }
#'
run_app <- function() {  appDir <- system.file("app", package = "gauth")
shiny::runApp(appDir, display.mode = "normal")}

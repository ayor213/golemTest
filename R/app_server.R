#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  mod_first_module1_server("first_module1_1")
  mod_second_module2_server("second_module2_1")
  mod_third_module3_server("third_module3_1")
}

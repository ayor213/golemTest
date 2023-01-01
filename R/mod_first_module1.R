#' first_module1 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_first_module1_ui <- function(id){
  ns <- NS(id)
  tagList(
      h2("A cars plot"),
      plotOutput(ns("plot"))
  )
}

#' first_module1 Server Functions
#'
#' @noRd
mod_first_module1_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$plot <- renderPlot({
      plot(mtcars)
    })
  })
}

## To be copied in the UI
# mod_first_module1_ui("first_module1_1")

## To be copied in the server
# mod_first_module1_server("first_module1_1")

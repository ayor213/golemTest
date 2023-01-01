#' third_module3 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_third_module3_ui <- function(id){
  ns <- NS(id)
  tagList(
    h2("USA Arrests"),
    plotOutput(ns("plot"))
  )
}

#' third_module3 Server Functions
#'
#' @noRd
mod_third_module3_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$plot <- renderPlot({
      plot(USArrests)
    })
  })
}
## To be copied in the UI
# mod_third_module3_ui("third_module3_1")

## To be copied in the server
# mod_third_module3_server("third_module3_1")

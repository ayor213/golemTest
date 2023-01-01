#' second_module2 UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_second_module2_ui <- function(id){
  ns <- NS(id)
  tagList(
    h2("A toothgrowth Plot"),
    plotOutput(ns("plot"))
  )
}

#' second_module2 Server Functions
#'
#' @noRd
mod_second_module2_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$plot <- renderPlot({
      plot(ToothGrowth)
  })
  })
}

## To be copied in the UI
# mod_second_module2_ui("second_module2_1")

## To be copied in the server
# mod_second_module2_server("second_module2_1")

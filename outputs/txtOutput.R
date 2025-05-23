library(shiny)

msg = "Usando a função server"

ui <- fluidPage(
  textOutput(outputId = "txtSaida"),
  verbatimTextOutput(outputId = "bvsaida")
  
)

server <- function(input, output, session) {
  output$txtSaida <- renderText(msg)
  output$bvsaida <- renderPrint(version)
  output$bvsaida <- renderPrint(ExtendedTask)
}

shinyApp(ui, server)
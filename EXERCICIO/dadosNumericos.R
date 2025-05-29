library(shiny)

ui <- fluidPage(
  titlePanel("Numeric input"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput(
        inputId = "numImput", label = "Adicione um numero", value = 1,
        max = 100, min = 0, step = 0.1
      )
    ),
    
    mainPanel(
      verbatimTextOutput(outputId = "saida", placeholder = TRUE)
    )
  )
)

server <- function(input, output, session) {
  output$saida <- renderText(input$numImput)
}

shinyApp(ui, server)
library(shiny)

ui <- fluidPage(
  
  textOutput("saida"),
  dateInput(inputId = "data", "selecione uma data"),
  
  numericInput(inputId = "numeros",label = "selecione um numero", min = 0, max = 10, value = 1, step = 0.1 )
  
)

server <- function(input, output, session) {
  output$saida <- renderText({
      paste("Você selecionou a data:", input$data)
    })
  
  output$tabela <- renderTable({
    data.frame(valor = input$numeros)
    paste("numero selecionado:", input$numeros)
  })
}

shinyApp(ui, server)
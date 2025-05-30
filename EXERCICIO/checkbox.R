library(shiny)

ui <- fluidPage(
  titlePanel("Checkbox"),
  
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput(
        inputId = "checkboxID", label = "Selecione os produtos",
        list("TV" = "televisão", "SMARTPHONE" = "cel", "SOM" =3, "NOTEBOOK" =4)
        
      )
    ),
    mainPanel(
      actionButton(inputId = "salvar", label = "Click"),
      verbatimTextOutput(outputId = "printSaida")
    )
  )
  
)

server <- function(input, output, session) {
  observeEvent(input$salvar,{
    opSelecionadas <- as.data.frame(input$checkboxID)
    print(opSelecionadas)
    output$printSaida <- renderText({
      input$checkboxID
    })
    
  })
}

shinyApp(ui, server)
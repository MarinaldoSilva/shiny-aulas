library(shiny)

ui <- fluidPage(
  titlePanel("Dados"),
  
  sidebarLayout(
    sidebarPanel(
      dateInput(inputId = "calendario", label = "Calendario", 
                format = "dd/mm/yyyy", autoclose = TRUE, language = "pt-br"),
      
    ),
    
    mainPanel(
      verbatimTextOutput(outputId = "saidaData")
    )
  )
  
)

server <- function(input, output, session) {
  output$saidaData <- renderText({
    format(input$calendario, "%d/%m/%y")
  })
}

shinyApp(ui, server)
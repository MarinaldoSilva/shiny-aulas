library(shiny)

ui <- fluidPage(
  sidebarLayout(
    
    sidebarPanel(
      radioButtons(
        inputId = "sexoLabel", label = "selecione o sexo", 
        choices = c("F", "M"),
        inline = FALSE
      ),
      
      radioButtons(
        inputId = "Op", label = "selecione uma opção", 
        list("OP 1" = 1, "OP 2" = 2, "OP 3" = 3), selected = 2, 
        inline = FALSE
      )
      
      
    ),
    
    mainPanel(
      verbatimTextOutput(outputId = "result"),
      verbatimTextOutput(outputId = "result1")
    )
    
  )
)

server <- function(input, output, session) {
  output$result <- renderText({
    paste("Sexo selecionado: ",input$sexoLabel)
  })
  
  output$result1 <- renderText({
    paste("Opção selecionada: ", input$Op)
  })
}

shinyApp(ui, server)
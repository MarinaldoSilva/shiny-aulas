library(shiny)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        "valor", "Indicador", 0, 100, 
        value = c(1,2), step = 0.1
      )
    ),  # Fechando corretamente o sidebarPanel aqui
    
    mainPanel(  # Agora dentro de sidebarLayout corretamente
      plotOutput(outputId = "grafico_histo")
    )
  )
)

server <- function(input, output){
  output$grafico_histo <- renderPlot({
    hist(runif(100, min = input$valor[1], max = input$valor[2]))  # Correção
  })
}

shinyApp(ui = ui, server = server)

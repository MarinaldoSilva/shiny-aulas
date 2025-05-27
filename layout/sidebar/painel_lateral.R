library(shiny)

ui <- fluidPage(
  sidebarPanel("Barra lateral"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("valores","Selecioone o conj. de valores", 
                  min = 0, max = 100, step = 0.1, value = c(1,2))
    ),
    mainPanel(
      plotOutput("plot")
    )
  )
  
)

server <- function(input, output, session) {
  output$plot <- renderPlot(barplot(input$valores))
}

shinyApp(ui, server)
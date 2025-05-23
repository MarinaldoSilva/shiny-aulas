library(shiny)
library(ggplot2)

ui <- fluidPage(
  plotOutput("plot1", width = "60%")
)

server <- function(input, output, session) {
  output$plot1 <- renderPlot(plot(1:20))
}

shinyApp(ui, server)
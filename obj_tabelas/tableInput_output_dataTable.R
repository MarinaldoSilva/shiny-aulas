df <- read.csv("dadosbahiaglp2019.csv", header = TRUE,sep = ";")
library(shiny)
library(readr)

ui <- fluidPage(
  
  tableOutput(outputId = "dfDados"),
  dataTableOutput(outputId = "dfdDados")
  
)

server <- function(input, output, session) {
  #output$dfDados <- renderTable(head(df))
  output$dfdDados <- renderDataTable(
    df, options = list(pageLength=20))
}

shinyApp(ui, server)
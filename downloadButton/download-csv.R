library(shiny)

df <- read.csv("dadosbahiaglp2019.csv", header = TRUE, sep = ";")

ui <- fluidPage(
  downloadButton("glp")  
)

server <- function(input, output, session) {
  output$glp <- downloadHandler(
    "glp.csv", content = function(file){
      write.csv(df, file) 
    })
}

shinyApp(ui, server)
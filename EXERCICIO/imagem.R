library(shiny)

ui <- fluidPage(
  titlePanel("Inserção de imagens"),
  sidebarLayout(
    sidebarPanel(),
    
    mainPanel(
      tags$img(src="7.jpg", heigth = 100, width = 100)
    )
    
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
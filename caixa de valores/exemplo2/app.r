library("shiny")
install.packages("jsonlite")
library(jsonlite)
ui <- fluidPage(
    textInput("nome", "Qual seu nome:"),
   
)

server <- function(input, output, session) {
    output$nome <- renderText({ input$nome })
    output$placehoulder <- renderText({input$nome})
}

shinyApp(ui, server)
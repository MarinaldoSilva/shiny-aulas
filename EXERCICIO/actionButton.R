library(shiny)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      actionButton(
        inputId = "bnt", label = "update mensagem",
        icon = icon("refresh")
      )
    ),
    mainPanel(
      textOutput(outputId = "saida")
    )
  )
)

server <- function(input, output, session) {
  observeEvent(input$bnt,{
    output$saida <- renderText(paste(
      "MSG exibida ao clicar no botão foi atualizada: "
      , input$bnt, "X"
    ))
  })
}

shinyApp(ui, server)
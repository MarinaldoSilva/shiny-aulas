library("shiny")

ui <- fluidPage(
  
  sliderInput(
    inputId = "objNum",
    label = "Selecione um ano",
    min = 1990, max = 2000, value = 1990, step = 1
  ),
  
  dateInput(
    inputId = "datas",
    label = "Selecione uma data de inicio",
  ),
  
  textAreaInput(
    inputId = "txtDescValores",
    label = "Descreva os valores selecionados",
  ),
  
  textInput(
    inputId = "txtDescValores",
    label = "Descreva os valores selecionados",
  )
)

server <- function(input, output, session){
  
}

shinyApp(ui, server)
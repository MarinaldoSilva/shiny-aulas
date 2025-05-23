library("shiny")

ui <- fluidPage(
  fileInput(
    inputId = "docs",
    label = tags$span(icon("upload"), "Envie aqui seu arquivo")
  ),
  actionButton(inputId = "btnClck", label = "Enviar"),
  
  actionLink(
    inputId = "link_google", 
    label = "Consulte os docs aqui",
    icon = icon("hippo"),
    href = "https://en.wikipedia.org/wiki/Hippopotamus",
    onclick = "window.open(
    'https://en.wikipedia.org/wiki/Hippopotamus','_black')"
  ),
)

server <- function(input, output, session){
  
}

shinyApp(ui, server)

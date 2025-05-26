library(shiny)

exe <- path.expand("FileZilla_Server_1.10.3_win64-setup.exe")

ui <- fluidPage(
  downloadButton("baixarArquivo")
)

server <- function(input, output, session) {
  output$baixarArquivo <- 
    downloadHandler(
      "FileZilla_Server_1.10.3_win64-setup.exe", 
      content = function(file){
        file.copy(exe, file)  
      })
}

shinyApp(ui, server)
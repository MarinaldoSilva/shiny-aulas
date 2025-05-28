library("shiny")
library("DT")


options(shiny.maxRequestSize = 50*1024^2)

ui <- fluidPage(
  fileInput(inputId = "upload", "Selecionar Arquivo"),
  #dataTableOutput(outputId = "tbDados")
  DTOutput(outputId = "tbDados")#SUPORTA RESPONSIVIDADE
)

server <- function(input, output, session) {
  output$tbDados <- renderDT({
    arquivo <- input$upload
    
    if (is.null(arquivo)) {
      return(NULL)
    }
    
    df <- read.csv(arquivo$datapath, 
                   header = TRUE, sep = ",")
    
    datatable(df, options = list(
      scrollx = TRUE,
      autowidth = TRUE,
      pageLength = 10
    ))
    
  })
}

shinyApp(ui, server)
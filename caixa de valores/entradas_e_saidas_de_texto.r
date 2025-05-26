library("shiny")


lista_materias <- c("Portuges", "Matematica", "Geografia", "historia")
#array_valores <- c(1,2)
ui <- fluidPage(

  textInput("nomeAula", "Nome da aula"),
  textAreaInput("descricaoAula", "Descrição da aula"),
  passwordInput("senhaAula", "Senha da aula"),
  #entrada numericas
  
  sliderInput("notaAula", "Selecione a nota:", 
              min = 0, max = 10, value = 5, step = 0.1 ),
  
  sliderInput("notaAula", "Selecione a nota entre dois valores:", 
              min = 0, max = 10, value = c(1,2), step = 0.1),
  
  numericInput("valoresNumericos", "Selecione o numero:", 
               min = 0, max = 10, value = 0, step = 0.1),
  #Objetos para datas
  
  dateInput("dataID", "Selecione a data da aula:"),
  
  dateRangeInput("dataRange", "Selecione o periodo"),
  
  #imputs de seleção
  
  selectInput(inputId = "selecioneMateria", 
              label = "Selecione a sua materia", choices = lista_materias),
  
  selectInput(inputId = "selecioneMateria", 
              label = "Selecione a sua materia", choices = lista_materias,
              multiple = TRUE),
  
  radioButtons(inputId = "radioMaterias", 
               label = "escolha uma materia", choices = lista_materias),
  
  radioButtons(
    inputId = "radioMaterias", 
    label = "escolha uma materia", 
    choiceNames = list(icon("atom"),icon("music"),icon("bell"),icon("book-open")),
    choiceValues = lista_materias
  ),
  
  checkboxGroupInput(inputId = "radioMaterias", 
                     label = "escolha uma materia",
                     choices = lista_materias),
  
  checkboxInput("votosSimPorMateria", "VOTEI SIM:", value = TRUE),
  checkboxInput("votosNaoPorMateria", "VOTEI NÃO")
  
)
server <- function(input, output, session) {

}

shinyApp(ui, server)

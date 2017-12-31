library(shiny)

ui <- fluidPage(
  titlePanel("Título"),

  sidebarLayout(
    sidebarPanel("Painel lateral"),
    mainPanel("Painel principal")
  )
)

server <- function(input, output) {}

shinyApp(ui = ui, server = server)


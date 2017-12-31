library(shiny)

ui <- fluidPage(
  tags$h1("Utilizando tags no Shiny"),
  tags$hr(),
  h3("Uma visão geral"),
  br(),
  tags$p("O", strong("Shiny"), "permite a utilização de", tags$em("tags"),
         "assim como fazemons em", tags$code("HTML"), ".")
)

server <- function(input, output) {

}

shinyApp(ui, server)

library(shiny)

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      numericInput(inputId = "num",
                   label = "Número  de observações",
                   value = 100)
    ),
    mainPanel(plotOutput(outputId = "hist"))
  )
)

server <- function(input, output) {

  output$hist <- hist(rnorm(input$num))

}

shinyApp(ui = ui, server = server)

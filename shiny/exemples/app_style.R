library(shiny)

ui <- fluidPage(
  fluidRow(
    titlePanel("Modificando o layout do app"),
    column(3,
           h3("Coluna de tamanho 3"),
           sliderInput(inputId = "slider",
                       label = "Um slider",
                       min = 1,
                       max = 30,
                       value = 20)),
    column(6,
           h3("Coluna de tamanho 9"),
           radioButtons(inputId = "botao",
                        label = "Escolha",
                        choices = c("Sim", "Não"))),
    column(3,
           h3("Coluna de tamanho 3"),
           tags$p("A largura da página é um grid de tamanho 12."))
  ),
  fluidRow(
    tags$a("Interact. Analyze.
           Communicate. Take a fresh,
           interactive approach to telling
           your data story with Shiny. Let users interact with
           your data and your analysis. And do it all with R.
           Shiny is an R package that makes it easy to build
           interactive web apps straight from R.
           You can host standalone apps on a webpage or embed
           them in R Markdown documents or build dashboards.
           You can also extend your Shiny apps with CSS themes,
           htmlwidgets, and JavaScript actions.",
           href = "https://shiny.rstudio.com/")
  )
)

server <- function(input, output) {

}

shinyApp(ui, server)

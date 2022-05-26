#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("MTG Qunatity Concatanator"),
    fluidRow(
        column(3,
           textAreaInput("text", 
                     label = h3("Input Qunatityless List Here"),
                     height = 500)
        ),
        column(3,
               textOutput("value"),
               tags$style(type="text/css", "#foo {white-space: pre-wrap;}")
               )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$value <- renderText({
      input$text
    })
}

# Run the application 
shinyApp(ui = ui, server = server)

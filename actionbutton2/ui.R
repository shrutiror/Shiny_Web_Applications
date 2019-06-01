#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
    
    # Application title
    titlePanel(h4("demonstration of submitButton",align="center")),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("type",
                        "Choose a dataset:",
                        choices = c("iris","mtcars","trees")),
            numericInput("obs",
                         "Number of observations:",
                         6),
            actionButton("action","click to update/view the observation of the selected dataset"),
            p("In this example,changing the user input will
              not reflect in the output until the update button is clicked.")
        ),
        
        
        # Show a plot of the generated distribution
        mainPanel(h4(textOutput("dataname")),
                  verbatimTextOutput("structure"),
                 h4( textOutput("observation")),
                  tableOutput("view")
                  
        )
    )
))

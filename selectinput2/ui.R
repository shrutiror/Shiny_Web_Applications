#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Demonstartion of selectinput2"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput("state", "Choose a state:",
                        list(`East Coast` = list("NY", "NJ", "CT"),
                             `West Coast` = list("WA", "OR", "CA"),
                             `Midwest` = list("MN", "WI", "IA"))
            )
            
        ),

        # Show a plot of the generated distribution
        mainPanel(
            textOutput("result")
        )
    )
))

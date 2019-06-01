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
    titlePanel("Demonstration of actionbutton()"),
    
    sidebarLayout(
        sidebarPanel(
            textInput("var1",
                      "Enter your first name:"
            ),
            textInput("var2",
                      "Enter your last name:"
            ),
            actionButton("action","update the last name"),
            p("click on the update button to update and see  the last name you entered")
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            textOutput("text1"),
            textOutput("text2")
        )
    )
))


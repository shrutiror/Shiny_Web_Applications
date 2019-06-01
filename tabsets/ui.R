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
    titlePanel(title=h4("Demonstration of renderplot()-a histogram",
                        align="center")),
    
    # Sidebar
    sidebarLayout(
        sidebarPanel(
            selectInput("variable",
                        "Select the quantitative variable: ",
                        c("Sepal.Length"=1,"Sepal.Width"=2,"Petal.Length"=3,"Petal.Width"=4)
            ),
            sliderInput("bins","Select the no of bins by using slider",min=5,
                        max=15,
                        value=10,
                        step=1),
            
            radioButtons("color","Select the color of the histogram",
                         c("green","red","blue","pink"),selected = "blue")
            
            
        ),
        
        # Show a plot of the generated distribution
        mainPanel(tabsetPanel(type="tab",
                              tabPanel("summary"),
                              tabPanel("structure"),
                              tabPanel("data"),
                              tabPanel("plot",plotOutput("myhist")),
                               )
            
            
        )
    )
))

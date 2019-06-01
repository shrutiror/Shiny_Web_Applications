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
  titlePanel("Demonstration of radiobutton widget."),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(("Enter your Personal Information"),
                 textInput("name","enter your name",""),
                 textInput("age","Enter your age",""),
                 radioButtons("gender"," Select gender",list("Male","Female"),"")),
    
    # Show a plot of the generated distribution
    mainPanel(("Personal information" ),
              textOutput("myname"),
              textOutput("myage"),
              textOutput("mygender"))
  )
))

#))

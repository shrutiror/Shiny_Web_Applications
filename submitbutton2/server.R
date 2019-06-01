#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$dataname<-renderText(
        paste("structure of the dataset :",input$type)
    )
    output$observation<-renderText(
        paste("first",input$obs,"observation of the dataset:",input$type)
    )
    
  output$structure<-renderPrint(
     
      str(get(input$type))
  )
  output$view<-renderTable(
    head(get(input$type),n=input$obs)  
  )

})

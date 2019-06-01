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

    
    output$text1<-renderText(paste("the first name is:" ,input$var1))
    
    output$text2<-renderText({
    input$action
    isolate( paste("The last name is:" ,input$var2))
        
        })
    

})

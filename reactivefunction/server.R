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
    
    colm<-reactive(as.numeric(input$variable))
    
    output$text1<-renderText({
       # colm<-as.numeric(input$variable)
        paste("the variable choosen is:",names(iris[colm()]))
    
    })
    output$text2<-renderText({
        paste("the color choosen is:",input$color)
        
    })
    output$text3<-renderText({

        paste("the number of bins choosen from slider is:",input$bins)
        
    })
    
    
    
   
     output$myhist<-renderPlot({
       # colm<-as.numeric(input$variable)
        hist(iris[,colm()],breaks=seq(0,max(iris[,colm()]),
                                    l=input$bins+1),col=input$color,
             main="histogram of iris dataset",xlab = names(iris[colm()]))
        
    })
})

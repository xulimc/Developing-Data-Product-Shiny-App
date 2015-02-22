#load library shiny
library(shiny)

shinyServer(
  function(input, output){
    
    observe({
      
    #generate random data points
    x<-runif(input$number,input$xmin,input$xmax)
    y<-runif(input$number,input$ymin,input$ymax)
    
    #calculate the sample means of x-values and y-values
    meanx<-reactive({mean(x)})
    meany<-reactive({mean(y)})
    
    #output the sample means of x-values and y-values
    output$meanx<-renderText({meanx()})
    output$meany<-renderText({meany()})
    
    #plot the linear regression model
    
    output$plot<-renderPlot({
      par(mar = c(5, 4, 1, 1))
      plot(x~y,xlab="x",ylab="y")
      abline(lm(x~y))
    })
    
    
    })
  }

  )
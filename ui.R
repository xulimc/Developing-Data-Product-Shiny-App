#load library shiny
library(shiny)


shinyUI(
  pageWithSidebar(
    
    headerPanel(
      "Welcome to Use Linear Regression Model"
      ),
    
    
    sidebarPanel(
    
      helpText("Instruction:"),
      helpText("Please first indicate the number of data points 
               and ranges of x-values and y-values."),
      helpText("This app will randomly generate data points based on your setting, 
               fit the linear regression model of y onto x, calculate the sample means, 
               and draw the linear regression model."),
    
      
      #Choose the number of data points
      selectInput("number", "Input the number of data points", 
                  choices = c(10,20,50,100,200,500,1000), selected = 10),
      
      #Choose the range of x-values
      strong("Choose x-axis range:"),
      
      numericInput("xmin","from",-50),
            
      numericInput("xmax","to",50),
      
      #Choose the range of y-values
      strong("Choose y-axis range:"),
      
      numericInput("ymin","from",0),
      
      numericInput("ymax","to",100)
      
      
      ),  
      
    mainPanel(
      
      #output the sample mean
      strong("The sample mean of x-values of data points is"),
      
      verbatimTextOutput("meanx"),
      
      strong("The sample mean of y-values of data points is"),
      
      verbatimTextOutput("meany"),
      
      #output the regression model
      strong("The figure of linear regression model is:"),
      
      plotOutput("plot")
      
      )  
      
  
    
    )
  
  )
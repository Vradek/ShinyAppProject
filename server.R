library(shiny)

shinyServer(function(input, output) {
  model1<-lm(Fertility~Agriculture, data=swiss)
  model2<-lm(Fertility~Examination, data=swiss)
  model3<-lm(Fertility~Education, data=swiss)
  model4<-lm(Fertility~Catholic, data=swiss)

  model1sum <- reactive({
    summary(model1)
  })

  model2sum <- reactive({
    summary(model2)
  })

  model3sum <- reactive({
    summary(model3)
  })

  model4sum <- reactive({
    summary(model4)
  })

  output$plot1 <- renderPlot({
    if(input$Agriculture){
     plot(model1, which=1)
   } else
   if(input$Examination){
     plot(model2, which=1)
   } else
    if(input$Education){
      plot(model3, which=1)
    } else
    if(input$Catholic){
      plot(model4, which=1)
    }
  })

  output$sum1 <- renderPrint({
    if(input$Agriculture){
      model1sum()
  } else
  if (input$Examination){
    model2sum()
  } else
  if (input$Education){
    model3sum()
  } else
  if (input$Catholic){
    model4sum()
  }
  })
})

library(shiny)

shinyUI(fluidPage(

  titlePanel("Visualizing Models"),
  sidebarLayout(
    sidebarPanel(
      checkboxInput("Agriculture", "Agriculture", F),
      checkboxInput("Examination", "Examination", F),
      checkboxInput("Education", "Education", F),
      checkboxInput("Catholic", "Catholic", F),
      submitButton("Calculate")
    ),
    mainPanel(
       plotOutput("plot1"),
       h3 ("Summary of Model:"),
       textOutput("sum1")
       )
    )
  ))

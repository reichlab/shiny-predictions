library(shiny)
library(ggplot2)
library(dplyr)
library(magrittr)
library(RCurl)
library(foreign)
library(devtools)
library(XML)
# url <- "https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW18-KoT-2016-05-13.csv"
# 
# fludata <- getURL(url)
# fludata <- read.csv(textConnection(fludata))
# 
source("http://goo.gl/w64gfp")
flusheet <- "https://docs.google.com/spreadsheets/d/1x9tnTKpSAmfc6R5NSGsgL4HsLqNJN1cvzXnz-LtEdvQ/edit?usp=sharing"
fludata2 <- readGoogleSheet(flusheet) %>% cleanGoogleTable(table=1, ncols=5) %>% as.data.frame()


ui <- fluidPage(titlePanel("Flu Prediciton Database Alpha: Epidemic Week 18"),
                sidebarLayout(
                  sidebarPanel(
                    textInput(inputId= "yearInput", "Year", "2016"),
                    textInput(inputId= "EPweekInput", "Epidemic Week", "18"),
                    sliderInput(inputId= "probInput", "Probability (13.5 = Point Prediction, actually represent ranges)", min=0, max=13.5, value=c(0,13), step=0.5, round=FALSE),
                    selectInput(inputId= "weekaheadInput", "Weeks Ahead", choices= c("Week_1", "Week_2", "Week_3", "Week_4", "Peak"))
                ),
                mainPanel(plotOutput("fluplot"))
  
))


server <- function(input, output, session) {
  output$fluplot <- renderPlot({
    filtered <- fludata2 %>% filter(
      Probability >= input$probInput[1],
      Probability <= input$probInput[2]
    )
    ggplot(filtered, aes(as.numeric(Probability), input$weekaheadInput))
  })
  
}

shinyApp(ui = ui, server = server)




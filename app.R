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
# this is for when I figure out how to scan in an entire sheet at once
source("http://goo.gl/w64gfp")
flusheet <- "https://docs.google.com/spreadsheets/d/1x9tnTKpSAmfc6R5NSGsgL4HsLqNJN1cvzXnz-LtEdvQ/edit?usp=sharing"
fludata2 <- readGoogleSheet(flusheet) %>% cleanGoogleTable(table=1, ncols=6) %>% as.data.frame() %>% na.omit()
flusheet2 <- "https://docs.google.com/spreadsheets/d/1adT0gxpgaznSoEzjwfo-an1O-FT_nAhbuXRnsRciYB8/edit?usp=sharing"
fludata3 <- readGoogleSheet(flusheet2) %>% cleanGoogleTable(table=1, ncols=3) %>% as.data.frame() %>% na.omit()

fludata2$Probability = fludata2$Probability %>% as.numeric()
fludata2$Week_1 = fludata2$Week_1 %>% as.numeric()
fludata2$Week_2 = fludata2$Week_2 %>% as.numeric()
fludata2$Week_3 = fludata2$Week_3 %>% as.numeric()
fludata2$Week_4 = fludata2$Week_4 %>% as.numeric()

fludata3$Week = fludata3$Week %>% as.numeric()
fludata3$Season_onset = fludata3$Season_onset %>% as.numeric()
fludata3$Peak_week = fludata3$Peak_week %>% as.numeric()



ui <- fluidPage(titlePanel("Flu Prediciton Database Alpha: Epidemic Week 18"),
                sidebarLayout(
                  sidebarPanel(
                    textInput(inputId= "yearInput", "Year", "2016"),
                    textInput(inputId= "EPweekInput", "Epidemic Week", "18"),
                    sliderInput(inputId= "probInput", "Probability (13.5 = Point Prediction, actually represent ranges)", min=0, max=13.5, value=c(0,13), step=0.5, round=FALSE),
                    selectInput(inputId= "weekaheadInput", "Weeks Ahead", choices= c("Week_1", "Week_2", "Week_3", "Week_4", "Peak")),
                    selectInput(inputId= "typeInput", "Type of Secondary Data", choices = c("Season_onset", "Peak_week"))
                ),
                mainPanel(plotOutput("fluplot"), plotOutput("fluplot2"))
  
))


server <- function(input, output, session) {
  output$fluplot <- renderPlot({
    filtered <- fludata2 %>% filter(
      Probability >= input$probInput[1],
      Probability <= input$probInput[2]
    )
    ggplot(filtered, aes(x=as.numeric(Probability), y=Week_1)) + geom_point()
    # y=input$weekaheadInput still not fully working, so I have simplified it to one week ahead for the moment
  })
  output$fluplot2 <- renderPlot({
    ggplot(fludata3, aes(x=as.numeric(Week), y=as.numeric(Season_onset))) + geom_line()
    # same issue as above, y=input$typeInput still not working due to NAs being introduced by coercion
  })
  
}

shinyApp(ui = ui, server = server)




library(shiny)
library(ggplot2)
library(plyr)
library(magrittr)
library(RCurl)
library(foreign)
library(devtools)
library(XML)
library(cdcfluview)

yeartest <- get_flu_data("national", data_source="ilinet", years=2015:2016)

ui <- fluidPage(titlePanel("Flu Prediction Data v2"),
                sidebarLayout(
                  sidebarPanel(
                    textInput(inputId="URL", "Data URL", "https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW15-KoT-2016-04-22.csv" ),
                    textInput(inputId="week", "Week Number", "15")
                  ),
                  mainPanel(plotOutput("fluplot"))
                ))

server <-  function(input, output, session) {
  output$fluplot <- renderPlot({
    eweek_part1 <- fread(input$URL, nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
    eweek_part2 <- fread(input$URL, nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
    eweek_part1$V2 <- NULL
    eweek_part2$V2 <- NULL
    eweek_part1 <- plyr::rename(eweek_part1, c("V1"="Week"))
    eweek_part1 <- plyr::rename(eweek_part1, c("V3"="Season_Onset"))
    eweek_part1 <- plyr::rename(eweek_part1, c("V4"="Peak_Week"))
    eweek_part2 <- plyr::rename(eweek_part2, c("V1"="ILI_Bin"))
    eweek_part2 <- plyr::rename(eweek_part2, c("V3"="1_Week_Ahead"))
    eweek_part2 <- plyr::rename(eweek_part2, c("V4"="2_Week_Ahead"))
    eweek_part2 <- plyr::rename(eweek_part2, c("V5"="3_Week_Ahead"))
    eweek_part2 <- plyr::rename(eweek_part2, c("V6"="4_Week_Ahead"))
    eweek_part2 <- plyr::rename(eweek_part2, c("V7"="Peak_Height"))
    
    eweek_sub <- subset(eweek_part2, ILI_Bin=="Point Prediction")
    
    new_string <- c(eweek_sub$`1_Week_Ahead`, eweek_sub$`2_Week_Ahead`, eweek_sub$`3_Week_Ahead`, eweek_sub$`4_Week_Ahead`)
    new_string2 <- c(as.numeric(input$week) +1, as.numeric(input$week) +2, as.numeric(input$week) +3, as.numeric(input$week) +4)
    
    eweek_revised1 <- data.frame(yeartest$WEEK, yeartest$X..WEIGHTED.ILI, yeartest$YEAR)
    eweek_revised1 <- plyr::rename(eweek_revised1, c("yeartest.WEEK"="WEEK", "yeartest.X..WEIGHTED.ILI"="X..WEIGHTED.ILI", "yeartest.YEAR"="YEAR"))
    
    eweek_revised2 <- data.frame(new_string2, new_string)
    eweek_revised2 <- plyr::rename(eweek_revised2, c("new_string2"="WEEK", "new_string"="X..WEIGHTED.ILI"))
    
    ggplot() +geom_line(data=eweek_revised1, aes(x=WEEK, y=X..WEIGHTED.ILI, color=YEAR)) +geom_line(data=eweek_revised2, aes(x=WEEK, y=X..WEIGHTED.ILI), color="red")
    
  })
}

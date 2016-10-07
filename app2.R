library(shiny)
library(ggplot2)
library(plyr)
library(magrittr)
library(RCurl)
library(devtools)
library(XML)
library(cdcfluview)
library(data.table)
library(stringi)

yeartest <- get_flu_data("national", data_source="ilinet", years=2015:2016)

ui <- fluidPage(titlePanel("Flu Prediction Data v2"),
                sidebarLayout(
                  sidebarPanel(
                    textInput(inputId="URL", "Data URL", "https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW15-KoT-2016-04-22.csv" ),
                    p("Please input a valid 2015-2016 flu week data sheet above.")
                    #sliderInput(inputId="years", "Year Span", min=2000, max=2016, value=c(2015:2016), step=1)
                  ),
                  mainPanel(plotOutput("fluplot"))
                ))

server <-  function(input, output, session) {
  output$fluplot <- renderPlot({
    #yeartest <- get_flu_data("national", data_source="ilinet", years=input$years)
    week <- as.numeric(stri_sub(input$URL, from=96, to=97))
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
    eweek_sub2 <- subset(eweek_part1, Week=="Point Prediction")
    
    ilipredictions <- c(eweek_sub$`1_Week_Ahead`, eweek_sub$`2_Week_Ahead`, eweek_sub$`3_Week_Ahead`, eweek_sub$`4_Week_Ahead`)
    weeknumbers <- c(as.numeric(week) +1, as.numeric(week) +2, as.numeric(week) +3, as.numeric(week) +4)
    
    peakheight <- c(eweek_sub$`Peak_Height`)
    peakweek <- c(round(eweek_sub2$`Peak_Week`))
    
    eweek_revised3 <- data.frame(peakweek, peakheight)
    eweek_revised3 <- plyr::rename(eweek_revised3, c("peakweek"="WEEK", "peakheight"="X..WEIGHTED.ILI"))
    eweek_revised3$YEAR <- stri_sub(URL, from=103, to=106)
    eweek_revised3$DATE <- as.Date(paste(eweek_revised3$WEEK, eweek_revised3$YEAR, 7, sep="."), format="%U.%Y.%u")
    
    
    eweek_revised1 <- data.frame(yeartest$WEEK, yeartest$X..WEIGHTED.ILI, yeartest$YEAR)
    eweek_revised1 <- plyr::rename(eweek_revised1, c("yeartest.WEEK"="WEEK", "yeartest.X..WEIGHTED.ILI"="X..WEIGHTED.ILI", "yeartest.YEAR"="YEAR"))
    eweek_revised1$DATE <- as.Date(paste(eweek_revised1$WEEK, eweek_revised1$YEAR, 7, sep="."), format="%U.%Y.%u")
    
    eweek_revised2 <- data.frame(weeknumbers, ilipredictions)
    eweek_revised2 <- plyr::rename(eweek_revised2, c("weeknumbers"="WEEK", "ilipredictions"="X..WEIGHTED.ILI"))
    eweek_revised2$YEAR <- stri_sub(URL, from=103, to=106)
    eweek_revised2$DATE <- as.Date(paste(eweek_revised2$WEEK, eweek_revised2$YEAR, 7, sep="."), format="%U.%Y.%u")
    
    ggplot() +geom_line(data=eweek_revised1, aes(x=DATE, y=X..WEIGHTED.ILI)) +geom_line(data=eweek_revised2, aes(x=DATE, y=X..WEIGHTED.ILI), color="red") +
      geom_point(data=eweek_revised3, aes(x=DATE, y=X..WEIGHTED.ILI), color="blue")
    
  })
}

shinyApp(ui = ui, server = server)

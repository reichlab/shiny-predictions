library(plyr)
library(data.table)
library(magrittr)
library(RCurl)

EW201601_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW01-KoT-2016-01-18.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201601_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW01-KoT-2016-01-18.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201601_part1$V2 <- NULL
EW201601_part2$V2 <- NULL
EW201601_part1 <- plyr::rename(EW201601_part1, c("V1"="Week"))
EW201601_part1 <- plyr::rename(EW201601_part1, c("V3"="Season_Onset"))
EW201601_part1 <- plyr::rename(EW201601_part1, c("V4"="Peak_Week"))
EW201601_part2 <- plyr::rename(EW201601_part2, c("V1"="ILI_Bin"))
EW201601_part2 <- plyr::rename(EW201601_part2, c("V3"="1_Week_Ahead"))
EW201601_part2 <- plyr::rename(EW201601_part2, c("V4"="2_Week_Ahead"))
EW201601_part2 <- plyr::rename(EW201601_part2, c("V5"="3_Week_Ahead"))
EW201601_part2 <- plyr::rename(EW201601_part2, c("V6"="4_Week_Ahead"))
EW201601_part2 <- plyr::rename(EW201601_part2, c("V7"="Peak_Height"))

EW201602_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW02-KoT-2016-01-25.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201602_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW02-KoT-2016-01-25.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201602_part1$V2 <- NULL
EW201602_part2$V2 <- NULL
EW201602_part1 <- plyr::rename(EW201602_part1, c("V1"="Week"))
EW201602_part1 <- plyr::rename(EW201602_part1, c("V3"="Season_Onset"))
EW201602_part1 <- plyr::rename(EW201602_part1, c("V4"="Peak_Week"))
EW201602_part2 <- plyr::rename(EW201602_part2, c("V1"="ILI_Bin"))
EW201602_part2 <- plyr::rename(EW201602_part2, c("V3"="1_Week_Ahead"))
EW201602_part2 <- plyr::rename(EW201602_part2, c("V4"="2_Week_Ahead"))
EW201602_part2 <- plyr::rename(EW201602_part2, c("V5"="3_Week_Ahead"))
EW201602_part2 <- plyr::rename(EW201602_part2, c("V6"="4_Week_Ahead"))
EW201602_part2 <- plyr::rename(EW201602_part2, c("V7"="Peak_Height"))

EW201603_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW03-KoT-2016-01-29.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201603_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW03-KoT-2016-01-29.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201603_part1$V2 <- NULL
EW201603_part2$V2 <- NULL
EW201603_part1 <- plyr::rename(EW201603_part1, c("V1"="Week"))
EW201603_part1 <- plyr::rename(EW201603_part1, c("V3"="Season_Onset"))
EW201603_part1 <- plyr::rename(EW201603_part1, c("V4"="Peak_Week"))
EW201603_part2 <- plyr::rename(EW201603_part2, c("V1"="ILI_Bin"))
EW201603_part2 <- plyr::rename(EW201603_part2, c("V3"="1_Week_Ahead"))
EW201603_part2 <- plyr::rename(EW201603_part2, c("V4"="2_Week_Ahead"))
EW201603_part2 <- plyr::rename(EW201603_part2, c("V5"="3_Week_Ahead"))
EW201603_part2 <- plyr::rename(EW201603_part2, c("V6"="4_Week_Ahead"))
EW201603_part2 <- plyr::rename(EW201603_part2, c("V7"="Peak_Height"))

EW201604_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW04-KoT-2016-02-05.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201604_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW04-KoT-2016-02-05.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201604_part1$V2 <- NULL
EW201604_part2$V2 <- NULL
EW201604_part1 <- plyr::rename(EW201604_part1, c("V1"="Week"))
EW201604_part1 <- plyr::rename(EW201604_part1, c("V3"="Season_Onset"))
EW201604_part1 <- plyr::rename(EW201604_part1, c("V4"="Peak_Week"))
EW201604_part2 <- plyr::rename(EW201604_part2, c("V1"="ILI_Bin"))
EW201604_part2 <- plyr::rename(EW201604_part2, c("V3"="1_Week_Ahead"))
EW201604_part2 <- plyr::rename(EW201604_part2, c("V4"="2_Week_Ahead"))
EW201604_part2 <- plyr::rename(EW201604_part2, c("V5"="3_Week_Ahead"))
EW201604_part2 <- plyr::rename(EW201604_part2, c("V6"="4_Week_Ahead"))
EW201604_part2 <- plyr::rename(EW201604_part2, c("V7"="Peak_Height"))

EW201605_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW05-KoT-2016-02-12.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201605_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW05-KoT-2016-02-12.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201605_part1$V2 <- NULL
EW201605_part2$V2 <- NULL
EW201605_part1 <- plyr::rename(EW201605_part1, c("V1"="Week"))
EW201605_part1 <- plyr::rename(EW201605_part1, c("V3"="Season_Onset"))
EW201605_part1 <- plyr::rename(EW201605_part1, c("V4"="Peak_Week"))
EW201605_part2 <- plyr::rename(EW201605_part2, c("V1"="ILI_Bin"))
EW201605_part2 <- plyr::rename(EW201605_part2, c("V3"="1_Week_Ahead"))
EW201605_part2 <- plyr::rename(EW201605_part2, c("V4"="2_Week_Ahead"))
EW201605_part2 <- plyr::rename(EW201605_part2, c("V5"="3_Week_Ahead"))
EW201605_part2 <- plyr::rename(EW201605_part2, c("V6"="4_Week_Ahead"))
EW201605_part2 <- plyr::rename(EW201605_part2, c("V7"="Peak_Height"))

EW201606_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW06-KoT-2016-02-19.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201606_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW06-KoT-2016-02-19.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201606_part1$V2 <- NULL
EW201606_part2$V2 <- NULL
EW201606_part1 <- plyr::rename(EW201606_part1, c("V1"="Week"))
EW201606_part1 <- plyr::rename(EW201606_part1, c("V3"="Season_Onset"))
EW201606_part1 <- plyr::rename(EW201606_part1, c("V4"="Peak_Week"))
EW201606_part2 <- plyr::rename(EW201606_part2, c("V1"="ILI_Bin"))
EW201606_part2 <- plyr::rename(EW201606_part2, c("V3"="1_Week_Ahead"))
EW201606_part2 <- plyr::rename(EW201606_part2, c("V4"="2_Week_Ahead"))
EW201606_part2 <- plyr::rename(EW201606_part2, c("V5"="3_Week_Ahead"))
EW201606_part2 <- plyr::rename(EW201606_part2, c("V6"="4_Week_Ahead"))
EW201606_part2 <- plyr::rename(EW201606_part2, c("V7"="Peak_Height"))

EW201607_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW07-KoT-2016-02-26.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201607_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW07-KoT-2016-02-26.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201607_part1$V2 <- NULL
EW201607_part2$V2 <- NULL
EW201607_part1 <- plyr::rename(EW201607_part1, c("V1"="Week"))
EW201607_part1 <- plyr::rename(EW201607_part1, c("V3"="Season_Onset"))
EW201607_part1 <- plyr::rename(EW201607_part1, c("V4"="Peak_Week"))
EW201607_part2 <- plyr::rename(EW201607_part2, c("V1"="ILI_Bin"))
EW201607_part2 <- plyr::rename(EW201607_part2, c("V3"="1_Week_Ahead"))
EW201607_part2 <- plyr::rename(EW201607_part2, c("V4"="2_Week_Ahead"))
EW201607_part2 <- plyr::rename(EW201607_part2, c("V5"="3_Week_Ahead"))
EW201607_part2 <- plyr::rename(EW201607_part2, c("V6"="4_Week_Ahead"))
EW201607_part2 <- plyr::rename(EW201607_part2, c("V7"="Peak_Height"))

EW201608_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW08-KoT-2016-03-04.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201608_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW08-KoT-2016-03-04.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201608_part1$V2 <- NULL
EW201608_part2$V2 <- NULL
EW201608_part1 <- plyr::rename(EW201608_part1, c("V1"="Week"))
EW201608_part1 <- plyr::rename(EW201608_part1, c("V3"="Season_Onset"))
EW201608_part1 <- plyr::rename(EW201608_part1, c("V4"="Peak_Week"))
EW201608_part2 <- plyr::rename(EW201608_part2, c("V1"="ILI_Bin"))
EW201608_part2 <- plyr::rename(EW201608_part2, c("V3"="1_Week_Ahead"))
EW201608_part2 <- plyr::rename(EW201608_part2, c("V4"="2_Week_Ahead"))
EW201608_part2 <- plyr::rename(EW201608_part2, c("V5"="3_Week_Ahead"))
EW201608_part2 <- plyr::rename(EW201608_part2, c("V6"="4_Week_Ahead"))
EW201608_part2 <- plyr::rename(EW201608_part2, c("V7"="Peak_Height"))

EW201609_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW09-KoT-2016-03-11.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201609_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW09-KoT-2016-03-11.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201609_part1$V2 <- NULL
EW201609_part2$V2 <- NULL
EW201609_part1 <- plyr::rename(EW201609_part1, c("V1"="Week"))
EW201609_part1 <- plyr::rename(EW201609_part1, c("V3"="Season_Onset"))
EW201609_part1 <- plyr::rename(EW201609_part1, c("V4"="Peak_Week"))
EW201609_part2 <- plyr::rename(EW201609_part2, c("V1"="ILI_Bin"))
EW201609_part2 <- plyr::rename(EW201609_part2, c("V3"="1_Week_Ahead"))
EW201609_part2 <- plyr::rename(EW201609_part2, c("V4"="2_Week_Ahead"))
EW201609_part2 <- plyr::rename(EW201609_part2, c("V5"="3_Week_Ahead"))
EW201609_part2 <- plyr::rename(EW201609_part2, c("V6"="4_Week_Ahead"))
EW201609_part2 <- plyr::rename(EW201609_part2, c("V7"="Peak_Height"))

EW201610_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW10-KoT-2016-03-18.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201610_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW10-KoT-2016-03-18.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201610_part1$V2 <- NULL
EW201610_part2$V2 <- NULL
EW201610_part1 <- plyr::rename(EW201610_part1, c("V1"="Week"))
EW201610_part1 <- plyr::rename(EW201610_part1, c("V3"="Season_Onset"))
EW201610_part1 <- plyr::rename(EW201610_part1, c("V4"="Peak_Week"))
EW201610_part2 <- plyr::rename(EW201610_part2, c("V1"="ILI_Bin"))
EW201610_part2 <- plyr::rename(EW201610_part2, c("V3"="1_Week_Ahead"))
EW201610_part2 <- plyr::rename(EW201610_part2, c("V4"="2_Week_Ahead"))
EW201610_part2 <- plyr::rename(EW201610_part2, c("V5"="3_Week_Ahead"))
EW201610_part2 <- plyr::rename(EW201610_part2, c("V6"="4_Week_Ahead"))
EW201610_part2 <- plyr::rename(EW201610_part2, c("V7"="Peak_Height"))

EW201611_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW11-KoT-2016-03-25.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201611_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW11-KoT-2016-03-25.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201611_part1$V2 <- NULL
EW201611_part2$V2 <- NULL
EW201611_part1 <- plyr::rename(EW201611_part1, c("V1"="Week"))
EW201611_part1 <- plyr::rename(EW201611_part1, c("V3"="Season_Onset"))
EW201611_part1 <- plyr::rename(EW201611_part1, c("V4"="Peak_Week"))
EW201611_part2 <- plyr::rename(EW201611_part2, c("V1"="ILI_Bin"))
EW201611_part2 <- plyr::rename(EW201611_part2, c("V3"="1_Week_Ahead"))
EW201611_part2 <- plyr::rename(EW201611_part2, c("V4"="2_Week_Ahead"))
EW201611_part2 <- plyr::rename(EW201611_part2, c("V5"="3_Week_Ahead"))
EW201611_part2 <- plyr::rename(EW201611_part2, c("V6"="4_Week_Ahead"))
EW201611_part2 <- plyr::rename(EW201611_part2, c("V7"="Peak_Height"))

EW201612_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW12-KoT-2016-04-01.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201612_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW12-KoT-2016-04-01.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201612_part1$V2 <- NULL
EW201612_part2$V2 <- NULL
EW201612_part1 <- plyr::rename(EW201612_part1, c("V1"="Week"))
EW201612_part1 <- plyr::rename(EW201612_part1, c("V3"="Season_Onset"))
EW201612_part1 <- plyr::rename(EW201612_part1, c("V4"="Peak_Week"))
EW201612_part2 <- plyr::rename(EW201612_part2, c("V1"="ILI_Bin"))
EW201612_part2 <- plyr::rename(EW201612_part2, c("V3"="1_Week_Ahead"))
EW201612_part2 <- plyr::rename(EW201612_part2, c("V4"="2_Week_Ahead"))
EW201612_part2 <- plyr::rename(EW201612_part2, c("V5"="3_Week_Ahead"))
EW201612_part2 <- plyr::rename(EW201612_part2, c("V6"="4_Week_Ahead"))
EW201612_part2 <- plyr::rename(EW201612_part2, c("V7"="Peak_Height"))

EW201613_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW13-KoT-2016-04-08.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201613_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW13-KoT-2016-04-08.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201613_part1$V2 <- NULL
EW201613_part2$V2 <- NULL
EW201613_part1 <- plyr::rename(EW201613_part1, c("V1"="Week"))
EW201613_part1 <- plyr::rename(EW201613_part1, c("V3"="Season_Onset"))
EW201613_part1 <- plyr::rename(EW201613_part1, c("V4"="Peak_Week"))
EW201613_part2 <- plyr::rename(EW201613_part2, c("V1"="ILI_Bin"))
EW201613_part2 <- plyr::rename(EW201613_part2, c("V3"="1_Week_Ahead"))
EW201613_part2 <- plyr::rename(EW201613_part2, c("V4"="2_Week_Ahead"))
EW201613_part2 <- plyr::rename(EW201613_part2, c("V5"="3_Week_Ahead"))
EW201613_part2 <- plyr::rename(EW201613_part2, c("V6"="4_Week_Ahead"))
EW201613_part2 <- plyr::rename(EW201613_part2, c("V7"="Peak_Height"))

EW201614_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW14-KoT-2016-04-15.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201614_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW14-KoT-2016-04-15.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201614_part1$V2 <- NULL
EW201614_part2$V2 <- NULL
EW201614_part1 <- plyr::rename(EW201614_part1, c("V1"="Week"))
EW201614_part1 <- plyr::rename(EW201614_part1, c("V3"="Season_Onset"))
EW201614_part1 <- plyr::rename(EW201614_part1, c("V4"="Peak_Week"))
EW201614_part2 <- plyr::rename(EW201614_part2, c("V1"="ILI_Bin"))
EW201614_part2 <- plyr::rename(EW201614_part2, c("V3"="1_Week_Ahead"))
EW201614_part2 <- plyr::rename(EW201614_part2, c("V4"="2_Week_Ahead"))
EW201614_part2 <- plyr::rename(EW201614_part2, c("V5"="3_Week_Ahead"))
EW201614_part2 <- plyr::rename(EW201614_part2, c("V6"="4_Week_Ahead"))
EW201614_part2 <- plyr::rename(EW201614_part2, c("V7"="Peak_Height"))

EW201615_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW15-KoT-2016-04-22.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201615_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW15-KoT-2016-04-22.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201615_part1$V2 <- NULL
EW201615_part2$V2 <- NULL
EW201615_part1 <- plyr::rename(EW201615_part1, c("V1"="Week"))
EW201615_part1 <- plyr::rename(EW201615_part1, c("V3"="Season_Onset"))
EW201615_part1 <- plyr::rename(EW201615_part1, c("V4"="Peak_Week"))
EW201615_part2 <- plyr::rename(EW201615_part2, c("V1"="ILI_Bin"))
EW201615_part2 <- plyr::rename(EW201615_part2, c("V3"="1_Week_Ahead"))
EW201615_part2 <- plyr::rename(EW201615_part2, c("V4"="2_Week_Ahead"))
EW201615_part2 <- plyr::rename(EW201615_part2, c("V5"="3_Week_Ahead"))
EW201615_part2 <- plyr::rename(EW201615_part2, c("V6"="4_Week_Ahead"))
EW201615_part2 <- plyr::rename(EW201615_part2, c("V7"="Peak_Height"))

EW201616_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW16-KoT-2016-04-29.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201616_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW16-KoT-2016-04-29.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201616_part1$V2 <- NULL
EW201616_part2$V2 <- NULL
EW201616_part1 <- plyr::rename(EW201616_part1, c("V1"="Week"))
EW201616_part1 <- plyr::rename(EW201616_part1, c("V3"="Season_Onset"))
EW201616_part1 <- plyr::rename(EW201616_part1, c("V4"="Peak_Week"))
EW201616_part2 <- plyr::rename(EW201616_part2, c("V1"="ILI_Bin"))
EW201616_part2 <- plyr::rename(EW201616_part2, c("V3"="1_Week_Ahead"))
EW201616_part2 <- plyr::rename(EW201616_part2, c("V4"="2_Week_Ahead"))
EW201616_part2 <- plyr::rename(EW201616_part2, c("V5"="3_Week_Ahead"))
EW201616_part2 <- plyr::rename(EW201616_part2, c("V6"="4_Week_Ahead"))
EW201616_part2 <- plyr::rename(EW201616_part2, c("V7"="Peak_Height"))

EW201617_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW17-KoT-2016-05-06.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201617_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW17-KoT-2016-05-06.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201617_part1$V2 <- NULL
EW201617_part2$V2 <- NULL
EW201617_part1 <- plyr::rename(EW201617_part1, c("V1"="Week"))
EW201617_part1 <- plyr::rename(EW201617_part1, c("V3"="Season_Onset"))
EW201617_part1 <- plyr::rename(EW201617_part1, c("V4"="Peak_Week"))
EW201617_part2 <- plyr::rename(EW201617_part2, c("V1"="ILI_Bin"))
EW201617_part2 <- plyr::rename(EW201617_part2, c("V3"="1_Week_Ahead"))
EW201617_part2 <- plyr::rename(EW201617_part2, c("V4"="2_Week_Ahead"))
EW201617_part2 <- plyr::rename(EW201617_part2, c("V5"="3_Week_Ahead"))
EW201617_part2 <- plyr::rename(EW201617_part2, c("V6"="4_Week_Ahead"))
EW201617_part2 <- plyr::rename(EW201617_part2, c("V7"="Peak_Height"))

EW201618_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW18-KoT-2016-05-13.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201618_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW18-KoT-2016-05-13.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201618_part1$V2 <- NULL
EW201618_part2$V2 <- NULL
EW201618_part1 <- plyr::rename(EW201618_part1, c("V1"="Week"))
EW201618_part1 <- plyr::rename(EW201618_part1, c("V3"="Season_Onset"))
EW201618_part1 <- plyr::rename(EW201618_part1, c("V4"="Peak_Week"))
EW201618_part2 <- plyr::rename(EW201618_part2, c("V1"="ILI_Bin"))
EW201618_part2 <- plyr::rename(EW201618_part2, c("V3"="1_Week_Ahead"))
EW201618_part2 <- plyr::rename(EW201618_part2, c("V4"="2_Week_Ahead"))
EW201618_part2 <- plyr::rename(EW201618_part2, c("V5"="3_Week_Ahead"))
EW201618_part2 <- plyr::rename(EW201618_part2, c("V6"="4_Week_Ahead"))
EW201618_part2 <- plyr::rename(EW201618_part2, c("V7"="Peak_Height"))

EW201549_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW49-KoT-2015-12-21.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201549_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW49-KoT-2015-12-21.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201549_part1$V2 <- NULL
EW201549_part2$V2 <- NULL
EW201549_part1 <- plyr::rename(EW201549_part1, c("V1"="Week"))
EW201549_part1 <- plyr::rename(EW201549_part1, c("V3"="Season_Onset"))
EW201549_part1 <- plyr::rename(EW201549_part1, c("V4"="Peak_Week"))
EW201549_part2 <- plyr::rename(EW201549_part2, c("V1"="ILI_Bin"))
EW201549_part2 <- plyr::rename(EW201549_part2, c("V3"="1_Week_Ahead"))
EW201549_part2 <- plyr::rename(EW201549_part2, c("V4"="2_Week_Ahead"))
EW201549_part2 <- plyr::rename(EW201549_part2, c("V5"="3_Week_Ahead"))
EW201549_part2 <- plyr::rename(EW201549_part2, c("V6"="4_Week_Ahead"))
EW201549_part2 <- plyr::rename(EW201549_part2, c("V7"="Peak_Height"))

EW201550_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW50-KoT-2015-12-29-modified.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201550_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW50-KoT-2015-12-29-modified.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201550_part1$V2 <- NULL
EW201550_part2$V2 <- NULL
EW201550_part1 <- plyr::rename(EW201550_part1, c("V1"="Week"))
EW201550_part1 <- plyr::rename(EW201550_part1, c("V3"="Season_Onset"))
EW201550_part1 <- plyr::rename(EW201550_part1, c("V4"="Peak_Week"))
EW201550_part2 <- plyr::rename(EW201550_part2, c("V1"="ILI_Bin"))
EW201550_part2 <- plyr::rename(EW201550_part2, c("V3"="1_Week_Ahead"))
EW201550_part2 <- plyr::rename(EW201550_part2, c("V4"="2_Week_Ahead"))
EW201550_part2 <- plyr::rename(EW201550_part2, c("V5"="3_Week_Ahead"))
EW201550_part2 <- plyr::rename(EW201550_part2, c("V6"="4_Week_Ahead"))
EW201550_part2 <- plyr::rename(EW201550_part2, c("V7"="Peak_Height"))

EW201551_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW51-KoT-2016-01-05.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201551_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW51-KoT-2016-01-05.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201551_part1$V2 <- NULL
EW201551_part2$V2 <- NULL
EW201551_part1 <- plyr::rename(EW201551_part1, c("V1"="Week"))
EW201551_part1 <- plyr::rename(EW201551_part1, c("V3"="Season_Onset"))
EW201551_part1 <- plyr::rename(EW201551_part1, c("V4"="Peak_Week"))
EW201551_part2 <- plyr::rename(EW201551_part2, c("V1"="ILI_Bin"))
EW201551_part2 <- plyr::rename(EW201551_part2, c("V3"="1_Week_Ahead"))
EW201551_part2 <- plyr::rename(EW201551_part2, c("V4"="2_Week_Ahead"))
EW201551_part2 <- plyr::rename(EW201551_part2, c("V5"="3_Week_Ahead"))
EW201551_part2 <- plyr::rename(EW201551_part2, c("V6"="4_Week_Ahead"))
EW201551_part2 <- plyr::rename(EW201551_part2, c("V7"="Peak_Height"))

EW201552_part1 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW52-KoT-2016-01-08.csv", nrows=35, skip=9, select = c(1:4)) %>% as.data.frame()
EW201552_part2 <- fread("https://raw.githubusercontent.com/reichlab/ssr-influenza-competition/master/inst/submissions/EW52-KoT-2016-01-08.csv", nrows=29, skip=46, select=c(1:7)) %>% as.data.frame()
EW201552_part1$V2 <- NULL
EW201552_part2$V2 <- NULL
EW201552_part1 <- plyr::rename(EW201552_part1, c("V1"="Week"))
EW201552_part1 <- plyr::rename(EW201552_part1, c("V3"="Season_Onset"))
EW201552_part1 <- plyr::rename(EW201552_part1, c("V4"="Peak_Week"))
EW201552_part2 <- plyr::rename(EW201552_part2, c("V1"="ILI_Bin"))
EW201552_part2 <- plyr::rename(EW201552_part2, c("V3"="1_Week_Ahead"))
EW201552_part2 <- plyr::rename(EW201552_part2, c("V4"="2_Week_Ahead"))
EW201552_part2 <- plyr::rename(EW201552_part2, c("V5"="3_Week_Ahead"))
EW201552_part2 <- plyr::rename(EW201552_part2, c("V6"="4_Week_Ahead"))
EW201552_part2 <- plyr::rename(EW201552_part2, c("V7"="Peak_Height"))

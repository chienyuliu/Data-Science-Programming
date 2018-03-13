library(rvest)
url <- "https://news.google.com/news/?ned=zh-tw_tw&gl=TW&hl=zh-tw"
httr_web <- read_html(url,encoding = 'utf-8')
title <- httr_web%>%html_nodes('.hzdq5d')%>%html_text()
nextWeb <- httr_web%>%html_nodes('.hzdq5d')%>%html_attr("href")
author <- httr_web%>%html_nodes('.axLPub > span , .Pc0Wt')%>%html_text()
googleNews <- data.frame(標題 = title, 發布者 = author, 連結 = nextWeb)
View(googleNews)

library(tidyr)
library(dplyr)

df1 <- data.frame(RINID = c("A", "A", "A", "A", "B","C", "C"),
                  year = c("2004", "2004",  "2005", "2006","2004", "2004", '2005'), 
                  income = c("203", "203", " 108", "20", "400", NA, "1200"))
                 

df2 <- data.frame(RINID = c("A","A", "A", "B","C", "C"),
                  year = c("2004",  "2005", "2006","2004", "2004", '2005'), 
                  income = c("203", " 108", "20", "400", NA, "1200"))

df2$year <- sub("^", "year", 
                df2 $year)



data_wide <- tidyr::spread(
  df2 , year, income)



data_wide <- tidyr::spread(df1, year, income)


which(duplicated(df1))
                                                                                                                                                                                                                                         -102L))
df3 <- df1[!duplicated(df1), ]

data_wide2 <- df1 %>%
  distinct()%>%
  pivot_wider(.,
    names_from = year,
    values_from = income
  )





outcome <- data.frame(RINID = c("A", "A", "A", "B","C", "E"),
                      Start_Date = c("2004/05/04", "2005/08/22", "2008/08/27","2006/07/10", "2009/05/10", '2011/06/01'), 
                      End_Date = c("2005/08/23","2008/08/28", "2010/09/12", "2006/07/11", "2010/05/10", "2013/06/02"),
                      Square = c("14", "15", "20", "2", "10", "20"),
                      y2004 = c(1, 0, 0,0 ,0, 0), 
                      y2005 = c(1, 1, 0,0 ,0, 0), 
                      y2006 = c(0, 1, 0, 1, 0, 0), 
                      y2007 = c(0, 1, 0,0 ,0, 0), 
                      y2008 = c(0, 1, 1, 0, 0, 0), 
                      y2009 = c(0, 0, 1, 0, 1, 0), 
                      y2010 = c(0, 0, 1, 0, 1, 0), 
                      y2011 = c(0, 0, 0, 0, 0, 1),
                      y2012 = c(0, 0, 0, 0, 0, 1),
                      y2013 = c(0, 0, 0, 0, 0, 1))




merge1 <- merge(outcome, data_wide, by =  "RINID", all.x=TRUE)

merge1 <- merge1 %>%
  mutate_at(vars(y2004:year2006), as.numeric)


merge2 <- merge1


list1 <- c(seq(from = 2004, to = 2012, by =1))
#multiplication

for(i in list1){
  eval(parse(text=print(paste0(
             "merge1$y", i,"<- with (merge1, merge1$y", i,"* merge1$year", i,")"
             ))))
}

#ifelse statement for income

for(i in list1){
  eval(parse(text=print(paste0(
    "merge1$y", i,"<- ifelse(merge2$y", i,"== 0 & is.na(merge1$y", i,"), 0, merge1$y", i, ")"
  ))))
}


" 


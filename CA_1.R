                    #ABHISHEK KUMAR MISHRA - 12221644         
                                    #ODD
#Q1 ----
#Accessing the inbuilt data set
mtc <- mtcars

#Normalizing or standardizing 'am' column with scale function 
mtc$am <- scale(mtc$am)

#converting 1 and 0 into yes and no in 'vs' column
mtc$vs <- ifelse(mtc$vs==1,"Yes","No")



#Q2 ----
#Loading the data
wine <- read.csv(file = "WineDataset.csv",stringsAsFactors = F)

#Preprocessing the data
library(tidyverse)
wine_df <- wine %>%
  select(-Title,-Description,-Secondary.Grape.Varieties,
         -Country,-Characteristics,-Per.bottle...case...each,-Appellation,-Vintage
         ,-Region,-Grape,-Closure,-Style)

#Removing the NA 
a<- complete.cases(wine_df)
wine_df <- wine_df[a,]

wine_df[wine_df$Type=='',"Type"] <-"White"



#Q3 ----
#Acquiring the data
TG_data <- ToothGrowth
library(sqldf)    #library for sql


#Tooth Length and suppliment values where dose =2
sqldf("select len,
      supp from TG_data 
      where dose=2")

#Average of Toothlength grouped by supplimnet
sqldf("select avg(len),
      supp from TG_data 
      group by supp")

#Total of guinea pigs where 
sqldf("select count(supp) 
      from TG_data 
      where len>20")

#Average of Toothlength where dose is greater than 1 grouped by suppliment
sqldf("select avg(len),supp 
      from TG_data 
      where dose>1 group by supp")

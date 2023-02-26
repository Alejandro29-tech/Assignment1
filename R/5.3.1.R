#5.3.1
library(nycflights13)
library(tidyverse)
library(readr)
library(dplyr)
nycflights13::flights
fl<-nycflights13::flights
#1
flny<- fl%>%
  arrange(desc(is.na(dep_delay)))       #ordenar por NA

#2
fl_Mrsts<-arrange(fl,desc(dep_delay))  #mas retrasado
fl_Madlts<-arrange(fl,dep_delay)       #mas adelnatado

#3
fl_airtime<-arrange(fl,air_time) #vuelo mas rapido velocidad

#4
fl_distanceC<-arrange(fl,distance)    #vuelo mas corto
fl_distanceL<-arrange(fl,desc(distance)) #vuelo mas largo

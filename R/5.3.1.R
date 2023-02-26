#5.3.1
library(nycflights13)
library(tidyverse)
library(readr)
library(dplyr)
nycflights13::flights
fl<-nycflights13::flights
#1
flny<- fl%>%
  arrange(desc(is.na(dep_delay)))       # Ordenar por NA

#2
fl_Mrsts<-arrange(fl,desc(dep_delay))  # Más retrasado
fl_Madlts<-arrange(fl,dep_delay)       # Más adelantado

#3
fl_airtime<-arrange(fl,air_time) # Vuelo más rápido velocidad

#4
fl_distanceC<-arrange(fl,distance)    # Vuelo más corto
fl_distanceL<-arrange(fl,desc(distance)) # Vuelo más largo

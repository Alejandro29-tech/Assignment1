library(nycflights13)
library(tidyverse)
library(readr)
library(dplyr)
nycflights13::flights
fl<-nycflights13::flights
flny<- fl%>%
  #1
  flny1<- fl%>%
  filter(arr_delay>119)         # vuelos con retraso de 2+ horas
#2
flny2<- fl%>%
  filter(dest=="IAH"|dest=="HOU" ) # vuelos a Houston
#3
flny3<- fl%>%
  filter(carrier=="AA"|carrier=="DL"|carrier=="UA")
#4
flny4<- fl%>%
  filter(month%in%c(7,8,9))
#5
flny5<- fl%>%
  filter(arr_delay>119&dep_delay==0)
#6
flny6<- fl%>%
  filter(arr_delay<=60 & air_time<=30)
#7 <--- ej 2
flny7<- fl%>%
  filter(between(hour, 0,6))

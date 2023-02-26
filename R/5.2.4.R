#5.2.4
#ej 1 :
library(nycflights13)
library(tidyverse)
library(readr)
library(dplyr)
nycflights13::flights
fl<-nycflights13::flights
#1
  flny1<- fl%>%
  filter(arr_delay>119)         # Vuelos con retraso de +2 horas.
#2
flny2<- fl%>%
  filter(dest=="IAH"|dest=="HOU" ) # Vuelos a Houston
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
#7
flny7<- fl%>%
  filter(hour>0 & hour<6)

# Ej 2
#¿Qué hace?
  # La función between() realiza un rango de valores partiendo de una variable, un ejemplo seria:
flny7.2<- fl%>%
  filter(between(hour, 0,6))


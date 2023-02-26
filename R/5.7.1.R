#5.7.1
library(nycflights13)
library(tidyverse)
library(readr)
library(dplyr)
nycflights13::flights
fl<-nycflights13::flights
time_record<-flights %>%
  filter(!is.na(arr_delay)) %>%
  group_by(tailnum) %>%
  summarise(arr_delay = mean(arr_delay), n = n()) %>%
  filter(n >= 20) %>%
  filter(min_rank(desc(arr_delay)) == 1)


#La pregunta no define una forma de medir el registro a tiempo, por lo que consideraré dos métricas:

#proporción de vuelos no retrasados o cancelados, y
#retraso medio de llegada.
#La primera métrica es la proporción de vuelos no cancelados y a tiempo.
#Utilizo la presencia de una hora de llegada como indicador de que un vuelo no fue cancelado.
#Sin embargo, hay muchos aviones que nunca han volado un vuelo a tiempo.
#Además, muchos de los aviones que tienen la menor proporción de vuelos a tiempo
#solo han volado un pequeño número de vuelos.

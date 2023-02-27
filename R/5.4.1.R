#5.4.1
library(nycflights13)
library(tidyverse)
library(readr)
library(dplyr)
nycflights13::flights
fl<-nycflights13::flights
#2
fl_select<-select(flights, year, day, year, year, day, dest, dep_delay)
# ¿Qué sucede si incluye el nombre de una variable varias veces en una función select()?
  #RTA: Cualquier variable duplicada solo se incluye una vez.

#3
vars<-c("year", "month", "day", "dep_delay", "arr_delay")
vars_tab<-select(fl, one_of(vars))
#Que hace la función any_of()?
  #RTA:: La función one_of() se utiliza para seleccionar solo las columnas del
  #conjunto de datos que se encuentran en el vector en este caso el vector "vars"
#Por qué podría ser útil en conjunto con este vector?
  #RTA:: tambien con esta función se puede simplificar la función `select()`.
#4
fl_4.4<-select(fl, contains("time"))
#Does the result of running the following code surprise you?
  #RTA: Si sorprende, no sabia que mediante una línea de código se pódia realizar una "busqueda" de esta forma.

fl_4.4_ch<-select(flights, contains("time",ignore.case = FALSE))
# Realiza una búsqueda exacta y se distingue entre mayúsculas y minúsculas.
# Por ejemplo, si se busca la cadena "hola" en un texto que contiene "Hola" u "HOLA",
# La búsqueda no devolverá ninguna coincidencia.

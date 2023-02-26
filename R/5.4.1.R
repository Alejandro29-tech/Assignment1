#5.4.1
library(nycflights13)
library(tidyverse)
library(readr)
library(dplyr)
nycflights13::flights
fl<-nycflights13::flights
#2
fl_select<-select(flights, year, day, year, year, day, dest, dep_delay)
#¿Qué sucede si incluye el nombre de una variable varias veces en una funcion select()?
  #RTA: Cualquier variable duplicada solo se incluye una vez.

#3
vars<-c("year", "month", "day", "dep_delay", "arr_delay")
vars_tab<-select(fl, one_of(vars))
#Que hace la funcion any_of()?
  #RTA:: la funcion one_of() se utiliza para seleccionar solo las columnas del
  #conjunto de datos que se encuentran en el vector en este caso el vector "vars"
#Por qué podría ser útil en conjunto con este vector?
  #RTA:: Porque con esta funcion es mas facil crear vectore que tengan caracteres y que tengan nombres de variables.

#4
fl_4.4<-select(fl, contains("time"))
#Does the result of running the following code surprise you?
  #RTA: si me sorprende xd, no sabia que mediente una linea de codigo se podia realizar una "busqueda" de esta forma.

fl_4.4_ch<-select(flights, contains("time",ignore.case = FALSE))
# realiza una búsqueda exacta y se distingue entre mayúsculas y minúsculas.
#Por ejemplo, si se busca la cadena "hola" en un texto que contiene "Hola" o "HOLA",
#la búsqueda no devolverá ninguna coincidencia.

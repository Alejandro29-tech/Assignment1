#5.5.2
library(nycflights13)
library(tidyverse)
library(readr)
library(dplyr)
nycflights13::flights
fl<-nycflights13::flights
#1
#Actualmente dep_time y sched_dep_time son convenientes de ver,
#pero difícil de calcular porque no son realmente números continuos.
#Conviértalos en una representación más conveniente de la cantidad de minutos desde medianoche
fl_t <- mutate(fl,
               dep_time_min=(dep_time%/%100*60+dep_time%%100)%%1440,
               sched_dep_time_min=(sched_dep_time%/%100*60+sched_dep_time%%100)%%1440)
#2
#Que esperas ver ?
#RTA:: Espero que air_time sea la diferencia entre llegada y salida de los vuelos.
fl_air_time <- mutate(fl,dep_time=(dep_time%/%100*60+dep_time%%100)%%1440,
                      arr_time=(arr_time%/%100*60+arr_time%%100)%%1440,
                      air_time2=air_time-arr_time+dep_time)
#que ves?
#Qué necesitas hacer para arreglarlo?
#RTA:: mas datos, ya que los tiemmpos de llegada y salida no toman en cuaenta otras variables,
      #tambien,la relación entre air_time, arr_time, y dep_time es: air_time <= arr_time - dep_time
      #suponiendo que la zona horaria de arr_time y dep_time son iguales.

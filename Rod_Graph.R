#Rod Graph
#Es adecuado para representar la distribución de frecuencias de una variable discreta

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

#Ingresa datos
Modelo = 2010:2016
Ventas = c(2,3,7,4,9,0,5)

plot(Modelo, Ventas, type="h", lty="solid", lwd=4,
     col=c("palegreen1", "paleturquoise", "plum2", 
           "lightpink1", "deepskyblue3", "darkorchid2", "indianred1"))
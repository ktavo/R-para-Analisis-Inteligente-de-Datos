#Tests

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

library("pgirmess")
library("ggplot2")


#Carga de datos
rendimiento = c(13, 27, 26, 22, 28, 27, 43, 35, 47, 32, 31, 37, 33, 33, 33, 26, 44, 33, 54)
condicion = as.factor(c(rep("A", 6), rep("B", 6), rep("C", 7)))

rendim = data.frame(rendimiento, condicion)
p <- ggplot(rendim, aes(x = condicion, y = rendimiento, color = condicion))
geom_boxplot(fill = condicion)
p
#Aplicamos prueba de Krustal wallis
kruskal.test(rendimiento, condicion)
#Pedimos los contrastes
#Esta ultima salida muestra diferencia notable entre A-B y A-C pero no entre B-C
kruskalmc(rendimiento ~ condicion)







#Histogram varying intervals
#Using Iris Data set to test diferent intervals for histogram

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

#Permite realizar diagramas conjuntos
par(mfrow = c(1,3))

hist(iris$Sepal.Length, nclass = 4, prob = TRUE, ylab = "Densidad",
     col = "lightsteelblue", border = "lightsteelblue4",
     xlab = "Longitud_del_sépalo", main = "4_clases")


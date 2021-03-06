#Histogram varying intervals
#Using Iris Data set to test diferent intervals for histogram

rm(list=ls())
setwd("E:/UBA/An�lisis Inteligente de Datos/Scripts Apunte Te�rico")

#Permite realizar diagramas conjuntos
par(mfrow = c(1,3))

hist(iris$Sepal.Length, nclass = 4, prob = TRUE, ylab = "Densidad",
     col = "lightsteelblue", border = "lightsteelblue4",
     xlab = "Longitud_del_s�palo", main = "4_clases")

hist(iris$Sepal.Length, nclass = 30, prob = TRUE, ylab = "Densidad",
     col = "lightsteelblue", border = "lightsteelblue4",
     xlab = "Longitud_del_s�palo", main = "30_clases")

hist(iris$Sepal.Length, breaks = "FD", prob = TRUE, ylab = "Densidad",
     col = "lightsteelblue", border = "lightsteelblue4",
     xlab = "Longitud_del_s�palo", main = "Freedman-Diaconis")


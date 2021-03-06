#Parallel Coordinate Graph
#Los gr�ficos de coordenadas paralelas son una alternativa para la visualizaci�n 
#datos multidimensionales.

rm(list=ls())
setwd("E:/UBA/An�lisis Inteligente de Datos/Scripts Apunte Te�rico")

library("ggplot2")
library("GGally")

#Genera el diagrama de coordenadas paralelas
ggparcoord(data = iris, columns = 1:4, mapping = aes(color = as.factor(Species))) +
  scale_color_discrete("Especies", labels = levels(iris$Species)) +
  xlab("") +
  ylab("") +
  scale_x_discrete(limit = c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"),
                   labels = c("Longitud_del_s�palo", "Ancho_del_s�palo", 
                              "Longitud_del_p�talo", "Ancho_del_p�talo"))
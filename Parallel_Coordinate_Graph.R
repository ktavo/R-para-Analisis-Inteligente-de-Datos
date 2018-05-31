#Parallel Coordinate Graph
#Los gráficos de coordenadas paralelas son una alternativa para la visualización 
#datos multidimensionales.

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

library("ggplot2")
library("GGally")

#Genera el diagrama de coordenadas paralelas
ggparcoord(data = iris, columns = 1:4, mapping = aes(color = as.factor(Species))) +
  scale_color_discrete("Especies", labels = levels(iris$Species)) +
  xlab("") +
  ylab("") +
  scale_x_discrete(limit = c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"),
                   labels = c("Longitud_del_sépalo", "Ancho_del_sépalo", 
                              "Longitud_del_pétalo", "Ancho_del_pétalo"))
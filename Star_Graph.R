#Star Graph
#Cuando todas las variables consideradas son cuantitativas para poder detectar estructuras similares,
#es adecuado el gráfico de estrellas.

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

#Toma las primeras nueve marcas de la base
autos = mtcars[1:9,]

#Añadimos etiquetas
row.names(autos) = c("Mazda", "Mazda_Wag", "Datsun", "Hornet_D", "Hornet_S",
                     "Valiant", "Duster", "Merc_D", "Merc")

#Generamos diagrama de estrellas
stars(autos, full = F, cex = 0.8, flip.labels = T, len = 1.9, col.stars = cm.colors(9))
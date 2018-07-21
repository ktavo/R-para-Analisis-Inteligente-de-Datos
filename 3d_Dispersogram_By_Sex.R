#Dispersograma tres variables

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

#Librería para graficar
library("scatterplot3d")
library("readxl")

riesgo = read_excel("DataSets/riesgo.xlsx")

#Organiza los datos
datos = data.frame(x = riesgo$Presión, y = riesgo$Peso, z = riesgo$Edad, group = riesgo$Sexo)

#Dispersograma separado por grupos
with(datos, scatterplot3d(x, y, z, box = FALSE, grid = TRUE, pch = 16, 
                          color = ifelse(group == "M", "royalblue", "indianred3"),
                          xlab = "Presión", ylab = "Peso", zlab = "Edad"))
legend("topright", legend = unique(riesgo$Sexo), title = "Sexo", pch = 16, col = c("indianred3", "royalblue"))
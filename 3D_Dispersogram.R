#Dispersograma tres variables

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

#Librería para graficar
library("scatterplot3d")
library("readxl")

#Permite realizar gráficos simultáneos
par(mfrow = c(1,2))

riesgo = read_excel("../Data Sets Apunte Teórico/riesgo.xlsx")

scatterplot3d(riesgo[,2:4], angle = 35, pch = 16, color = "royalblue", box = FALSE, grid = TRUE,
              xlab = "Presión", ylab ="Edad", zlab = "Peso")
scatterplot3d(riesgo[,2:4], angle = 225, pch = 16, color = "royalblue", box = FALSE, grid = TRUE,
              xlab = "Presión", ylab = "Edad", zlab = "Peso")


rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

library("ca")
library("FactoMineR")
library("ggplot2")
library("factoextra")


#Filas de la base
atento = c(64,57,57,72,36,21)
leve = c(94,94,105,141,97,51)
moderado = c(58,54,65,77,54,34)
disperso = c(46,40,60,94,78,51)
base = rbind(atento, leve, moderado, disperso)
colnames(base) = c("A", "B", "C", "D", "E", "F")
base

#Realizamos un análisis de correspondencias
aten.ca <-CA(base, grap = FALSE)
#get_ca_row(aten.ca)
#get_ca_col(aten.ca)
aten.ca$col
aten.ca$row

fbiz_contrib(aten.ca, choice = "row", axes = 1)
fbiz_contrib(aten.ca, choice = "col", axes = 1)







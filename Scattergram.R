#scattergram
#Cuando sobre un conjunto de individuos se han medido varias variables cuantitativas,
#puede resultar de interés visualizar si existe vinculación entre pares de estas variables.

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")
detach(IMCInfantil)

library("readxl")

#Importa Archivo para trabajar
IMCInfantil = read_excel("../Data Sets Apunte Teórico/IMCinfantil.xlsx")
attach(IMCInfantil)

#Arma una base con as variables numéricas
base.niños = data.frame(EDAD, PESO, TALLA, IMC, CC)
#rRoduce un diagrama de dispersión de a pares
pairs(base.niños, pch = 19, cex = 0.8, col = cm.colors(dim(base.niños)[2]))
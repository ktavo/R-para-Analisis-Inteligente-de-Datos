#scattergram
#Cuando sobre un conjunto de individuos se han medido varias variables cuantitativas,
#puede resultar de inter�s visualizar si existe vinculaci�n entre pares de estas variables.

rm(list=ls())
setwd("E:/UBA/An�lisis Inteligente de Datos/Scripts Apunte Te�rico")
detach(IMCInfantil)

library("readxl")

#Importa Archivo para trabajar
IMCInfantil = read_excel("../Data Sets Apunte Te�rico/IMCinfantil.xlsx")
attach(IMCInfantil)

#Arma una base con as variables num�ricas
base.ni�os = data.frame(EDAD, PESO, TALLA, IMC, CC)
#rRoduce un diagrama de dispersi�n de a pares
pairs(base.ni�os, pch = 19, cex = 0.8, col = cm.colors(dim(base.ni�os)[2]))
#Chernoff Faces
#Los diversos datos se transforman en caras, sirve para identificar similitudes entre individuos

rm(list=ls())
setwd("E:/UBA/An�lisis Inteligente de Datos/Scripts Apunte Te�rico")

library("tcltk2")
library("aplpack")
library("readxl")

#Importa Archivo para trabajar
galletitas = read_excel("../Data Sets Apunte Te�rico/galletitas.xlsx")
attach(galletitas)

#Agrupamos las galletitas saladas
saladas = split(galletitas, galletitas$Tipo)$salada

#Genera las caras de Chernoff
faces(saladas[,2:6], nrow.plot = 2, ncol.plot = 5, face.type = 1, labels = saladas$Marca)
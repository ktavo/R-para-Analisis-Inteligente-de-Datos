#Pie Chart
#Sobre el eje de las abscisas (horizontal) se representan las distintas categorías, 
#valores o intervalos de la variable en estudio. Sobre el eje las ordenadas (vertical)
#se representan las frecuencias absolutas y/o las relativas (cociente entre las 
#absolutas y la cantidad total de observaciones) o sus correspondientes porcentajes.

rm(list=ls())

setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

library("plotrix")
library("readxl")

# Importa la base desde el archivo de excel
IMCInfantil = read_excel("../Data Sets Apunte Teórico/IMCinfantil.xlsx")
#Almacena la base en memoria
attach(IMCInfantil)
#Calcula las frecuencias de las categorías de peso
frec.catpeso = table(CatPeso)
#Define etiquetas
etiquetas = c("Deficiente", "Normal", "Obeso", "Con_Sobrepeso")
#Genera gráfica
pie3D(frec.catpeso, labels = etiquetas, explode = 0.5, labelcex = 0.8, radius = 2,height = 0.1, shade = 0.7,
col = c("paleturquoise", "palegreen1", "yellow", "red"))
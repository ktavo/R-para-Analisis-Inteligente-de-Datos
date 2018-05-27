#Bar chart
#Es adecuado para representar variables cualitativas y aventaja al 
#diagrama circular pues que permite apreciar la distribución
#conjunta de dos variables.

rm(list=ls())

setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

library("readxl")

#Importa Archivo para trabajar
IMCInfantil = read_excel("../Data Sets Apunte Teórico/IMCinfantil.xlsx")

#Se pone la base en memoria
attach(IMCInfantil)

#Gráfica diagrama de barras
barplot(table(CatPeso), 
        ylab = ("Cantidad"),
        names.arg = c("Deficiente", "Normal", "Obeso", "Con_Sobrepeso"),
        col = c("palegreen1", "paleturquoise", "plum2", "lightpink1"))

#Bar chart
#Es adecuado para representar variables cualitativas y aventaja al 
#diagrama circular pues que permite apreciar la distribuci�n
#conjunta de dos variables.

rm(list=ls())

setwd("E:/UBA/An�lisis Inteligente de Datos/Scripts Apunte Te�rico")

library("readxl")

#Importa Archivo para trabajar
IMCInfantil = read_excel("../Data Sets Apunte Te�rico/IMCinfantil.xlsx")

#Se pone la base en memoria
attach(IMCInfantil)

#Gr�fica diagrama de barras
barplot(table(CatPeso), 
        ylab = ("Cantidad"),
        names.arg = c("Deficiente", "Normal", "Obeso", "Con_Sobrepeso"),
        col = c("palegreen1", "paleturquoise", "plum2", "lightpink1"))

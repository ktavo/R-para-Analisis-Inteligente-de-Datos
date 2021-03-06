#Correlogram
#el color azul indica correlaci�n positiva, el color rojo indica correlaci�n negativa.
#Cuanto mayor es la intensidad del color m�s cercano a 1 en el caso positivo y a ????1 en el cas
#o negativo se encuentra la correlaci�n.

rm(list=ls())
setwd("E:/UBA/An�lisis Inteligente de Datos/Scripts Apunte Te�rico")

library("corrplot")
library("readxl")

# Importa la base desde el archivo de excel
IMCInfantil = read_excel("../Data Sets Apunte Te�rico/IMCinfantil.xlsx")
#Almacena la base en memoria
attach(IMCInfantil)

#Arma una sub-base con las variables seleccionadas de IMCInfantil
base.ni�os = data.frame(EDAD, PESO, TALLA, IMC, CC)
#Modifica la variable para que correlacione de forma negativa con las otras
base.ni�os$CC = max(base.ni�os$CC) - base.ni�os$CC

#Calcula la matriz de correlaci�n
M = cor(base.ni�os)

#Genera el correlograma
corrplot.mixed(M, lower = "number", upper = "shade", addshade = "all")




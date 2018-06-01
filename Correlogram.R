#Correlogram
#el color azul indica correlación positiva, el color rojo indica correlación negativa.
#Cuanto mayor es la intensidad del color más cercano a 1 en el caso positivo y a ????1 en el cas
#o negativo se encuentra la correlación.

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

library("corrplot")
library("readxl")

# Importa la base desde el archivo de excel
IMCInfantil = read_excel("../Data Sets Apunte Teórico/IMCinfantil.xlsx")
#Almacena la base en memoria
attach(IMCInfantil)

#Arma una sub-base con las variables seleccionadas de IMCInfantil
base.niños = data.frame(EDAD, PESO, TALLA, IMC, CC)
#Modifica la variable para que correlacione de forma negativa con las otras
base.niños$CC = max(base.niños$CC) - base.niños$CC

#Calcula la matriz de correlación
M = cor(base.niños)

#Genera el correlograma
corrplot.mixed(M, lower = "number", upper = "shade", addshade = "all")




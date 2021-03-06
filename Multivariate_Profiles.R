#Multivariate profiles
#Permite comparar la posici�n central de varias variables en distintos individuos

rm(list=ls())
setwd("E:/UBA/An�lisis Inteligente de Datos/Scripts Apunte Te�rico")

library("ggplot2")
library("readxl")
library("reshape")

#Importa Archivo para trabajar
galletitas = read_excel("../Data Sets Apunte Te�rico/galletitas.xlsx")
attach(galletitas)

#Agrupa galletitas dulces
dulces = split(galletitas, galletitas$Tipo)$dulce
#Agrupa galletitas saladas
saladas = split(galletitas, galletitas$Tipo)$salada
#Media galletitas dulces
med.dul = apply(dulces[,2:6], 2, mean)
#Media galletitas saladas
med.sal = apply(saladas[,2:6], 2, mean)

#Arregla datos para el gr�fico
data.plot = data.frame(group = c(1,2,3,4,5), value1 = med.dul + 7, value2 = med.sal)
melteddata = melt(data.plot, id = "group")

ggplot(melteddata, aes(x = group, y = value, colour = variable)) +
  geom_line() +
  xlab("Variables") +
  ylab("Medias") +
  scale_x_discrete(limit = c("1", "2", "3", "4", "5"),
    labels = c("Calor�as", "Carbohidratos", 
             "Prote�nas", "Grasas", "Sodio")) +
  labs(colour = "Tipo") +
  scale_colour_manual(labels = c("Dulces", "Saladas"),
        values = c("royalblue", "green4"))

  
  
  
  


#Overlapping Bars
#Este tipo de gr�fco es �til cuando queremos apreciar la distribuci�n
#en dos subconjuntos de individuos.

rm(list=ls())
setwd("E:/UBA/An�lisis Inteligente de Datos/Scripts Apunte Te�rico")

library("readxl")
library("ggplot2")

#Importa Archivo para trabajar
IMCInfantil = read_excel("../Data Sets Apunte Te�rico/IMCinfantil.xlsx")

datos = data.frame(table(SEXO, CatPeso))

ggplot(data = datos, aes(x=CatPeso, y=Freq, fill=SEXO)) +
  geom_bar(stat="identity", colour="blue") +
  scale_fill_brewer(palette="Paired") +
  xlab("Categoria_de_peso") +
  ylab("")
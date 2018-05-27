#Overlapping Bars
#Este tipo de gráfco es útil cuando queremos apreciar la distribución
#en dos subconjuntos de individuos.

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

library("readxl")
library("ggplot2")

#Importa Archivo para trabajar
IMCInfantil = read_excel("../Data Sets Apunte Teórico/IMCinfantil.xlsx")

datos = data.frame(table(SEXO, CatPeso))

ggplot(data = datos, aes(x=CatPeso, y=Freq, fill=SEXO)) +
  geom_bar(stat="identity", colour="blue") +
  scale_fill_brewer(palette="Paired") +
  xlab("Categoria_de_peso") +
  ylab("")
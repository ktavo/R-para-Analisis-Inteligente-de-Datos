#Overlapping Bars
#En este tipo de esquemas, las barras pueden estar en posición vertical u horizontal

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")
detach(IMCInfantil)


library("readxl")
library("ggplot2")

#Importa Archivo para trabajar
IMCInfantil = read_excel("../Data Sets Apunte Teórico/IMCinfantil.xlsx")

#Se pone la base en memoria
attach(IMCInfantil)

datos = data.frame(table(SEXO, CatPeso))

#Gráfica Barras Adjacentes
ggplot(data = datos, aes(x=CatPeso, y=Freq, fill=SEXO)) +
  geom_bar(stat = "identity", colour = "blue", position = "dodge") +
  coord_flip() +
  scale_fill_brewer(palette = "Paired") +
  xlab("Categoria_De_Peso") +
  ylab("")



#Dispersograma dos variables

rm(list=ls())
setwd("E:/UBA/AnÃ¡lisis Inteligente de Datos/Scripts Apunte TeÃ³rico")

#Librería para graficar
library("ggplot2")
#Librería para manipular etiquetas de los grÃ¡ficos
library("ggrepel")
#Librería para leer xlsx
library("readxl")

#Importa Archivo para trabajar
riesgo = read_excel("../Data Sets Apunte Teórico/riesgo.xlsx")
attach(riesgo)

#Generamos el dispersograma
ggplot(riesgo, aes(x = Peso, y = Superficie)) +
  geom_point(colour = "royalblue", shape = 8) +
  xlab("Peso") +
  ylab("Superficie_corporal") +
  geom_text_repel(aes(label = rownames(riesgo), size = 2)) +
  theme(legend.position = "none")
  
  
  
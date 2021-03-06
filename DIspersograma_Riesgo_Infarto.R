#Dispersograma dos variables

rm(list=ls())
setwd("E:/UBA/An�lisis Inteligente de Datos/Scripts Apunte Te�rico")

#Librer�a para graficar
library("ggplot2")
#Librer�a para manipular etiquetas de los gráficos
library("ggrepel")
#Librer�a para leer xlsx
library("readxl")

#Importa Archivo para trabajar
riesgo = read_excel("../Data Sets Apunte Te�rico/riesgo.xlsx")
attach(riesgo)

#Generamos el dispersograma
ggplot(riesgo, aes(x = Peso, y = Superficie)) +
  geom_point(colour = "royalblue", shape = 8) +
  xlab("Peso") +
  ylab("Superficie_corporal") +
  geom_text_repel(aes(label = rownames(riesgo), size = 2)) +
  theme(legend.position = "none")
  
  
  
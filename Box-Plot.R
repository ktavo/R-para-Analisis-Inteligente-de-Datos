#Box-Plot
#La representación gráfica conjunta de los boxplots correspondientes a las distribuciones de una
#misma variable en distintos subconjuntos, permite comparar el comportamiento de esta variable en
#cada uno de estos subconjuntos

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

library("ggplot2")

#Importa Archivo para trabajar
kcalab = read_excel("../Data Sets Apunte Teórico/kcalab")
#Arregla los datos para trabajar
datos = data.frame(kcalab)

#Genera Gráfica comparativa de box-plots
ggplot(data = datos, aes(y = kcal), colour = factor(Laboratorio)) +
  geom_boxplot(aes(x = Laboratorio, fill = factor(Laboratorio))) +
  xlab("") +
  ylab("Calorías") +
  theme(axis.line = element_line(colour = "royalblue", size = 0.5, linetype = "solid")) +
  labs(fill = "Laboratorio") +
  scale_fill_brewer(palette = "BuPu")
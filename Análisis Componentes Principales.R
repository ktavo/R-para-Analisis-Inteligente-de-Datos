#Análisis de componentes principales

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

#Paquete para gráficos
library("ggplot2")
#Herramientas para desarollo de paquetes
library("devtools")
#Instala desde github
install_github("vqv/ggbiplot")
#Paquete para vizualización de componentes principales
library("ggbiplot")

nad = read_excel("DataSets/nadadores.xlsx")
nadadores = data.frame(nad[,2:5])

#Realiza el análisis de componentes principales
nad.pca.cov = prcomp(nadadores, center = TRUE, scale. = FALSE)
#Realiza el análisis de componentes principales con las variables estandarizadas
nad.pca.cor = prcomp(nadadores, center = TRUE, scale. = FALSE)


#Realiza un resumen de las variabilidades explicadas por las componentes principales
#ACP
summary(nad.pca.cov)
#ACP Variables estandarizadas 
summary(nad.pca.cor)


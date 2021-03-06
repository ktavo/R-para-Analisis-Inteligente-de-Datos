#Histogram
#Se utiliza para representar distribuciones de frecuencias correspondientes a 
#variables continuas. Uniendo los puntos medios de las bases superiores de los
#rect�ngulos del histograma se construye un pol�gono de frecuencias.

rm(list=ls())
setwd("E:/UBA/An�lisis Inteligente de Datos/Scripts Apunte Te�rico")
detach(IMCInfantil)


library("readxl")

#Importa Archivo para trabajar
IMCInfantil = read_excel("../Data Sets Apunte Te�rico/IMCinfantil.xlsx")
attach(IMCInfantil)

#Gr�ficar histograma
hist(PESO, col = "paleturquoise3", border = "royalblue", breaks = seq(0,85,5),
     density = 20, angle = 70, ylab = "", main = "")
#Toma los puntos medios de las barras
pto.medio = seq(2.5, 82.5, 5)
alt.dens = hist(PESO, breaks = seq(0, 85, 5), plot =F)$counts

#Busca la altura de las barras
points(pto.medio, alt.dens, type="l", lwd = 2, col = "mediumslateblue")
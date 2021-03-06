#Mosaic graph
#Se utiliza para representar distribuciones conjuntas multivariadas

rm(list=ls())
setwd("E:/UBA/An�lisis Inteligente de Datos/Scripts Apunte Te�rico")

#Carga de datos
gar.no = c(258, 280)
gar.si = c(184, 719)

#Combina los datos
mat = rbind(gar.no, gar.si)

#Pone nombre a las columnas
colnames(mat) = c("No_Considera_Consumo", "Considera_Consumo")
#Pone nombre a las filas
rownames(mat) = c("No_Considera_Garant�a", "Considera_Garant�a")

#Genera Diagrama de Mosaicos
mosaicplot(mat, col = c("skyblue", "royalblue"), cex.axis = 0.8, main = "")




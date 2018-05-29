#Mosaic graph
#Se utiliza para representar distribuciones conjuntas multivariadas

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

#Carga de datos
gar.no = c(258, 280)
gar.si = c(184, 719)

#Combina los datos
mat = rbind(gar.no, gar.si)

#Pone nombre a las columnas
colnames(mat) = c("No_Considera_Consumo", "Considera_Consumo")
#Pone nombre a las filas
rownames(mat) = c("No_Considera_Garantía", "Considera_Garantía")

#Genera Diagrama de Mosaicos
mosaicplot(mat, col = c("skyblue", "royalblue"), cex.axis = 0.8, main = "")




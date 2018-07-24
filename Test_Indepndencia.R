#Test de independencia
#Dos variables categóricas nominales u ordinales
#Una sola población
#Región de rchazo unilateral derecha
#Rechaza grandes diferencias entre observadas y esperadas

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

M2 = as.table(rbind(c(8,12,20), c(18,15,7)))
dimnames = list(Violencia = c("Poca", "Mucha"), grupo_etareo = c("Joven", "Adulto", "Mayor"))
(Xsq <- chisq.test(M2))
Xsq$expected
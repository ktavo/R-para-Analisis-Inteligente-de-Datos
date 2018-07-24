#Test de homogeneidad
#Una Variable Categorica u ordinal
#Dos o más poblaciones
#Región de rechgazo unilateral derecha
#Rechaza grandes diferencias entre observadas y esperadas

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")


M = as.table(rbind(c(12,88), c(25,25)))
dimnames(M) = list(Fumador = c("Si", "No"), enfermedad = c("Si padece", "No Padece"))

(Xsq <- chisq.test(M))
Xsq$expected
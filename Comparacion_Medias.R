#Test de homocedasticidad (igualdad de varianzas)

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

#Colesterol Conejo
dieta1 = c(13.4, 11, 15.3, 16.7, 13.4, 20.1, 13.6, 18.3)
dieta2 = c(10.4, 14.2, 20.5, 19.6, 18.5, 24, 23.4, 13.6)
dieta3 = c(7.5, 7.2, 6.7, 7.6, 11.2, 9.6, 6.8, 8.5)
ColesterolConejos = rbind(dieta1, dieta2, dieta3)
t(ColesterolConejos)

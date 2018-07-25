#Test Comparación de medias

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")


Arbequina = c(34.5, 20.1, 21.8, 18.2, 19.5, 20.2, 22.5, 23.9, 22.1, 24.1)
Carolea = c(16.4, 14.8, 17.8, 12.3, 11.9, 15.5, 13.4, 16, 15.8, 16.8)

#Testeanos normalidad en los datos 
shapiro.test(Arbequina)#No satisface supuesto de normalidad
shapiro.test(Carolea) #No satisface supuesto de normalidad
#Por no satisfacer el supuesto de normalidad se requiere un test de Wilcox
wilcox.test(Arbequina, Carolea, alternative = "two.sided")
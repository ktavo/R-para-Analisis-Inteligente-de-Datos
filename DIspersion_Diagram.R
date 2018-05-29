#Dispersion Diagram
#Permite apreciar las carácteristidas de las variables de los dos ejes
#Permite ver agrupaciones de individuos de acuerdo a las dos variables de los ejes

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

library("ggplot2")

#Declara la cilindrada como un factor
mtcars$cilind =factor(mtcars$cyl)

#Produce el diagrama de dispersión
ggplot(mtcars, aes(wt, mpg)) +
geom_point(aes(colour = cilind)) +
xlab("Peso") + 
ylab("Millas_Por_Galón") +
labs(colour = "Cilindrada")
#Dispersion Diagram
#Permite apreciar las car�cteristidas de las variables de los dos ejes
#Permite ver agrupaciones de individuos de acuerdo a las dos variables de los ejes

rm(list=ls())
setwd("E:/UBA/An�lisis Inteligente de Datos/Scripts Apunte Te�rico")

library("ggplot2")

#Declara la cilindrada como un factor
mtcars$cilind =factor(mtcars$cyl)

#Produce el diagrama de dispersi�n
ggplot(mtcars, aes(wt, mpg)) +
geom_point(aes(colour = cilind)) +
xlab("Peso") + 
ylab("Millas_Por_Gal�n") +
labs(colour = "Cilindrada")
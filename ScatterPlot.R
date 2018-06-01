#ScaterPlot
#nos permite identificar variables que siguen el patrón general de interacción pero se alejan del
#centro de las variables; pero también permite identificar puntos que están dentro del rango de
#ambas variables pero la forma de su interacción se separa de la forma general del grupo.

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

#Paquete de funciones y datos
library(MASS)

#Genera los datos
dat = mvrnorm(n = 60,c(10,5), cbind(c(0.7,0.5), c(0.5,0.4)),tol = 1e-6,
        empirical = FALSE, EISPACK = FALSE)

#Arregla los datos
datos=data.frame(dat)

#Produce un diagrama
ggplot(datos,aes(x = X1,y = X2))+
  geom_point(colour="royalblue")+
  geom_point(aes(x = 11.6,y = 3.3),colour = "indianred3")+
  stat_ellipse(aes(x = X1,y = X2),colour ="orchid3",type="norm")+
  geom_hline(yintercept = 3,linetype = "dashed",colour = "forestgreen")+
  geom_hline(yintercept = 7,linetype = "dashed",colour = "forestgreen")+
  geom_vline(xintercept = 8,linetype = "dashed",colour = "forestgreen")+
  geom_vline(xintercept = 12,linetype = "dashed",colour = "forestgreen")+
  xlab("")+
  ylab("")

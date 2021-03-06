#Level Curves
#Los colores y las lineas de contorno ayudan a identificar regiones de mayor densidad de observaciones.
#Mostramos el caso de la distribuci�n Normal Bivariada en las Figuras

rm(list=ls())
setwd("E:/UBA/An�lisis Inteligente de Datos/Scripts Apunte Te�rico")

#Defino la funci�n de distribuci�n normal bivariada con ro = 0
fun = function(x, y) exp (-x^2-y^2)

#Asignamos valores a las variables
x = seq(-3,3,0.1)
y = x

#Generamos la gr�fica de normal bivariada
persp(x,y, outer(x,y,fun), theta = -15, phi = 30, r = sqrt(3), d = 3,
      col = "deepskyblue1", xlab = "x", ylab = "y", zlab = "z")

#Gr�ficamos las curvas de nivel de la normal bivariada
filled.contour(outer(x,y,fun), axes = TRUE, frame.plot = FALSE, plot.axes = FALSE)
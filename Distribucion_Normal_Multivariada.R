#Distribución normal multivariada

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")


library("Hotelling")
library("corpcor")

#Partición de la base Iris
iris.sp = split(iris, iris$Species)
#Creamos base con las tres primeras variables cada variedad
setosa = data.frame(iris.sp[[1]])[,-c(4,5)]
#Calculamos al media de setosa
med.set = apply(setosa, 2, mean)
#Calculamos la matriz de covarianza de setosa
v1 = round(var(setosa),3)
#Base Versicolor
versicolor = data.frame(iris.sp[[2]])[,-c(4,5)]
#Calculamos la media de versicolor
med.vers = apply(versicolor, 2, mean)
#Calculamos la matriz de covarianza de versicolor
v2 = round(var(versicolor),3)
#Juntamos las dos variedades
todas = cbind(as.matrix(rbind(versicolor, setosa)), variedad = factor(c(rep("s",50),rep("v",50))))
#Calculamos la media general
med.gral = apply(todas, 2, mean)
#Calculamos la matriz de covarianzas amalgamada
v = (v1 + v2)/2
#Calculamos la diferencia de vectores medios
difmed = (med.set - med.vers)
#Calculamos el estadístico de Hotelling
t2 = (50*50/100)*t(difmed)%*%solve(v)%*%difmed
#Convertimos a F de Fisher 
efe = (97/(2*98))*t2
#Estimamos el p valor de la prueba
pvalor = 1-pf(efe ,3,96)
#Se calcula el test con Hotelling
fit = hotelling.test(.~variedad, data = data.frame(todas))
fit

#Estadístico para contraste del test de Hotelling
matc = rbind(c(1,-1,0),c(0,1,-1))
seto.trans = as.matrix(setosa)
versi.trans = as.matrix(versicolor)
todas.trans = cbind(rbind(seto.trans , versi.trans), variedad = factor(c(rep("s", 50),rep("v", 50))))
difmedtrans = matc
vtrans = matc
t2trans = (50*50/100)*t(difmedtrans)
t2trans
fit.trans = hotelling.test(.~variedad, data = data.frame(todas.trans))
todas.trans



















  
  
  
  
  
#univariate control
#Si observamos el comportamiento de una de las variables por separado, podemos detectar si 
#alguna de ellas se ha ido de rango.

rm(list=ls())
setwd("E:/UBA/Análisis Inteligente de Datos/Scripts Apunte Teórico")

#Paquete para dibujos
library("ggplot2")
#Paquete para manipular datos
library("dplyr")
#Paquete para leer archivos xlsx
library("readxl")

#Importa Archivo para trabajar
datos = read_excel("../Data Sets Apunte Teórico/controlunivariado.xlsx")
attach(datos)

#Reagrupa la base
dat = datos %% group_by(Obs, Clase)
#Modificamos Etiquetas
exp_names <- c("A" = "Bajo_Control", "B" = "Fuera_De_Control", "C" = "Fuera_De_Control")

ggplot(dat, aes(x = Obs, y = Valor, group = Clase, colour = Clase)) +
  facet_wrap(~Experimento, labeller = as_labeller(exp_names)) + 
  geom_point() +
  geom_hline(yintercept = 1, linetype = "dashed") +
  geom_hline(yintercept = 3, linetype = "dashed") +
  xlab("Observaciones") + 
  ylab("") +
  theme(legend.position = "none") + 
  scale_color_manual(values = c("royalblue", "indianred3"))
  
  
  
  
  
  





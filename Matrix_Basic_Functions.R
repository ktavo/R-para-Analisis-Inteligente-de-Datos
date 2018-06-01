#Autovalores
#Trabajando con matrices, autovalores


A=matrix(c(1,2,1,1,0,1,3,1,0,0,2,0,0,0,1,1),nrow=4,ncol=4,byrow=T)
A

#Calcula los autovalores
eigen(A)$values
#Los autovalores de una matriz y su traspeusta son iguales
eigen(t(A))$values

#Calcula la traza de A
sum(diag(A))
#Calcula la suma de autovalores de A
sum(eigen(A)$values)

#Calcula la traspuesta de A
t(A)
#Calcula la suma de la diagonal de la transpuesta de A
sum(diag(t(A)))
#Los determinantes de una matriz y su traspuesta son iguales
det(t(A))
det(A)

#Calcula la inversa de A
solve(A)
#Verificaicón de que son inversas
A%*%solve(A)

#Determinante de la inversa de A (es nverso a det(A)) En este caso 1/2 y 2/1
det(solve(A))
det(A)

#Los autovalores de una matriz y su inversa también son inversos
eigen(solve(A))$values

#Calcula los autovectores de A
eigen(A)$vectors
#Muestra el primer autovector
eigen(A)$vectors[,1]

#Verificamos que es un autovector de autovalor 2
A%*%eigen(A)$vectors[,1]
2*eigen(A)$vectors[,1]

#Calculamos la norma del prime vector dado
sqrt(sum(eigen(A)$vectors[,1]^2))



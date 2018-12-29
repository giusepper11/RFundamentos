## Objetos em R

# Vetor: possui 1 dimensao e 1 tipo de dado
vetor1 <- c(1:10) # range de elementos
vetor1
length(vetor1) # len do python =)
mode(vetor1)
class(vetor1)

#Matriz possui 2 dimensoes e 1 tipo de dado
matriz1 <- matrix(1:10, nrow = 2)
matriz1
length(matriz1)
mode(matriz1)
class(matriz1)

#Array: possui 2 ou mais dimensoes e 1 tipo de dados
array1 <- array(1:5, dim=c(3,3,3))
array1
length(array1)
mode(array1)

#Data Frame  matriz com diferentes tipos de dados
View(iris)
length(iris)
mode(iris)
class(iris)
typeof(iris)

# Lista : colecoes de diferentes objetos
lista1 = list(a=matriz1,b=vetor1)
lista1

# Funções também são vistas como objetos em R
func1 <- function(x){
  var1 = x * x
  return(var1)
}

func1(5)
class(func1)

# Removendo objetos

objects()
rm(array1,lista)
objects()

# Listas
# use list() para criar lista

# lista de strings
lista_carac = list('A','BB','CC')
lista_carac

# lista de numeros inteiros
lista_inteiros = list(2,3,4)
lista_inteiros

# lista de floats
lista_numerico = list(1.23,124.5434,2364.23)
lista_numerico

# lista de n complexo
lista_complx = list(1+5i, 2+7i,8 -1i)
lista_complx

# lista de valores logicos

lista_logic = list(TRUE,FALSE,TRUE)
lista_logic

#lista compostas

lista_comp1 = list('A',3,TRUE)
lista_comp1

lista1 = list(1:10, c('j','c','b'),rnorm(10))
lista1

# Slice da lista
lista1[1]
lista1[c(1,2)]
lista1[2]
lista1[[2]][1]
lista1[[2]][1] = 'Giuseppe'
lista1

# Para nomear os elementos - Listas Nomeadas
names(lista1) = c('inteiros','caracteres','numericos')
lista1

vec_num = 1:4
vec_char = c('A','B','C','D')

lista2 = list(Numeros = vec_num, Letras=vec_char)
lista2

# nomear elementos diretamente
lista2 = list(elemento1 = 3:5,elemento2=c(5.6,7.8,9.0))
lista2

# Trabaljando com elementos especificos da lista
names(lista1) = c('int','char','num')
lista1

lista1$int # recupera o item int da lista
lista1$num

# Comprimento da lista
length(lista1)

# extrair um elemento especifico dentro de cada nivel da lista
lista1$char
lista1$char[2]
lista1$char[1]

# Mode dos elementos > dados diferentes
mode(lista1$int)
mode(lista1$char)

# combinando 2 listas
lista3 = c(lista1,lista2)
lista3

# Transformando vetor em lista
v = c(1:3)
v
l = as.list(v)
l

# unindo 2 elementos em uma lista
mat = matrix(1:4, nr =2)
mat
vec = c(1:9)
vec
lst = list(mat,vec)
lst

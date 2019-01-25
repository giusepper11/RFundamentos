# Funções especiais

# unlist()
# produz um vetor com os elementos da lista
?unlist

lista1 = list(6,'b',15)
lista1
class(lista1)

unlist(lista1)
vec = unlist(lista1)
class(vec)
vec

lst2 = list(v1 =6, v2 = list(381,2190), v3 = c(30,1))
lst2
unlist(lst2)
do.call(rbind, data)
mean(unlist(lst2))
round(mean(unlist(lst2)))

# do.call
# Executa uma funcao em um objeto
# Warning!!!
# As funções da família apply aplicam uma função a cada elemento de um objeto (substitui um loop)
# A função do.call aplica uma função ao objeto inteiro e não a cada elemento individualmente
?do.call

data = list()
N = 100

for (n in 1:N) {
  data[[n]] = data.frame(index= n, char=sample(letters,1), z=rnorm(1))
}
data
head(data)
?rbind # junto os dataframes em um unico
do.call(rbind, data)
class(do.call(rbind, data))

# lapply() x do.call()
y = list(1:3,4:6,7:9)
y

lapply(y, sum) # somou cada elemento da lista
do.call(sum,y) # somou todos os elementos da lista

# o resultado da funçao lapply() pode ser obtido de outras formas
# pacote plyr
install.packages('plyr')
library(plyr)

y = list(1:3,4:6,7:9)
y

lapply(y, sum)
ldply(y,sum)

# Benchmark
install.packages('rbenchmark')
library(rbenchmark)

benchmark(do.call(sum,y), ldply(y,sum))

N = list(as.numeric(1:30000), as.numeric(4:60000), as.numeric(7:90000))
benchmark(do.call(sum,N), ldply(N,sum))

# strsplit()
# Divide uma string ou vetor de caracteres
texto = 'Esta é uma string.'
strsplit(texto, ' ')

texto = 'Esta é uma string.'
strsplit(texto, '')


dates = c("1990-05-23","1991-12-17", "2000-02-12")
temp = strsplit(dates,'-')
temp
class(temp)

matrix(unlist(temp), ncol = 3, byrow = TRUE) # descontruir a lista(to vector) e criar uma matriz

Names <- c("Brin, Sergey", "Page, Larry",
           "Dorsey, Jack", "Glass, Noah",
           "Williams, Evan", "Stone, Biz")

Cofounded = rep(c('Google','Twitter'), c(2,4)) # repitu o 1º 2x e 2º 4x
Cofounded

temp = strsplit(Names, ', ')
temp

frase <- "Muitas vezes temos que repetir algo diversas vezes e essas diversas vezes parecem algo estranho"
palavras = strsplit(frase, ' ')[[1]]
palavras
unique(tolower(palavras)) # normaliza forma das palavras e seleciona as unicas


antes = data.frame(attr = c(1,30,4,6), tipo = c('pao_e_agua','pao_e_agua2'))
antes
strsplit(as.character(antes$tipo),'_e_')

library(stringr)
str_split_fixed(antes$tipo, "_e_",2) # ao inves de uma lista, retorna matriz

antes = data.frame(attr = c(1,30,4,6), tipo = c('pao_e_agua','pao_e_agua2'))
antes
depois = strsplit(as.character(antes$tipo),'_e_')
do.call(rbind, depois) # transformou lista em matriz

install.packages('tidyr')

library('dplyr')
library('tidyr')


antes = data.frame(attr = c(1,30,4,6), tipo = c('pao_e_agua','pao_e_agua2'))

antes %>% # %>% - concatenaçao 
  separate(tipo, c('pao','agua'),'_e_') # Resultado dataframe

# Revisao

# operadores de atribuicao
vec1 = 1:4
vec2 <- 1:4

class(vec1)
class(vec2)

mean(x = 1:10) # aqui atribui como parametro, apenas na funçao
x
mean(x <- 1:10) # aqui ele tbm serviu como parametro mas permaneceu como objeto criado
x

# Criacao de objetos

vetor1 = 1:4
vetor2 = c(1:4)
vetor3 = c(1,2,3,4)

class(vetor1)
class(vetor2)
class(vetor3) #o ultimo vetor n é um sequencia em R, por isso n define a classe como inteiro

typeof(vetor1) # integer
typeof(vetor2) # integer
typeof(vetor3) # double


matriz1 = matrix(1:4, nr=2)
matriz2 = matrix(c(1:4), nr=2)
matriz3 = matrix(c(1,2,3,4), nr=2)

class(matriz1)
class(matriz2)
class(matriz3) #o ultimo vetor n é um sequencia em R, por isso n define a classe como inteiro

typeof(matriz1) # integer
typeof(matriz2) # integer
typeof(matriz3) # double


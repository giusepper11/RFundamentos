# Revisao e Aprofundamento

# interagindo com o sistema operacional
list.files()
.Platform$OS.type
.Platform$file.sep
Sys.Date()
Sys.info()
R.version
?system
system('ls -a')


# Criando um vetor
vec1 = c(12,3,4,19,34)
vec1

# criando uma Matriz
dados = c(1:50)
mat1 = matrix(dados,nrow = 5,ncol = 5, byrow = T) #> byrow determina preenchimento por linha
mat1

# criando listas
lst1 = list(vec1,mat1)
lst1

# Criando dataframe
char_vec = c('A','B','C')
num_vec = c(1,2,3)
logic_vec = c(TRUE,FALSE,TRUE)
df1 = data.frame(char_vec,num_vec,logic_vec)
df1

# comparado vetores e matrizes
vec1 > 10
mat1 > 20
mat1 == 2
mat1 == 2 | mat1 == 3 # OR
mat1 == 2 & mat1 == 3 # AND
mat1 > 2 & mat1 < 4
!mat1 > 2 & mat1 < 4

# iterando um vetor
for (i in length(vec1)) {
  if (vec1[[i]]>10) {
        print('Maior que 10')
  } else {
    print('Menor que 10')
  }
}

# operacoes com listas e matrizes
lista2 = list(2,3,5,7,11,13)
lista2

for (p in lista2) {
  print(p)
}

for (i in 1:length(lista2)) {
  print(lista2[[i]])
}

mat1
mat2 = t(mat1)
mat2

for (i in mat1) {
  for (j in mat2) {
    total = sum(mat2) + sum(mat1)
  }
}
print(total)

# Nomeando vetores, matrizes, listas e dataframes
names(vec1) = c('c1','c2','c3','c4','c5')
vec1
dimnames(mat1) = (list(c('ob1','ob2','ob3','ob4','ob5'),c('c1','c1','c1','c1','c1')))
mat1
names(lst1) = c('Vetor','Matriz')
lst1
colnames(df1) = c('caracter','numero','bool')
rownames(df1) = c('ob1','ob2','ob3')
df1


# verificando e convertendo
is.vector(vec1)
is.vector(mat1)

as.vector(mat1)
as.list(mat1)
as.data.frame(mat1)
as.character(mat1)
class(mat1)

df1
as.matrix(df1)
as.numeric(df1)

# Valores NA
mat2 = matrix(1:90,10)
mat2
mat2[sample(1:50, 10)] = NA
mat2

?is.na
na_lista = is.na(mat2)
na_lista

# Operacoes com objetos
vec1
sum(vec1)
mat1
rowSums(mat1)
colSums(mat1)
cbind(vec1,mat1)
rbind(vec1,mat1)
mat1*3


#Ranking e Ordenamento
a = c(100,10,1000)
a
order(a)
a[order(a)]


# slicing
vec1
vec1[2]
mat1
mat1[,2] # [linha , coluna]
mat1[2:5,1]

lst1
lst1[[1]]
lst1[[2]]
lst1[[1]][4]
lst1$Matriz

# Dataframes
mtcars
head(mtcars) # primeiras linhas
tail(mtcars) # ultimas linhas
str(mtcars) # exibe a extrutura interna do objeto
mtcars[,5]
mtcars[1:4, 7:9]
mtcars[1:4,'hp']
mtcars['hp']
mtcars$hp
subset(mtcars, subset = hp > 170) # filtro
library(dplyr)
slice(mtcars,1:4)
order(mtcars)
order(mtcars$mpg)


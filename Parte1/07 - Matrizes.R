# Matrizes

# Criando Matrizes

# numero de linhas
matrix(c(1,2,3,4,5,6), nr=2)
matrix(c(1,2,3,4,5,6), nr=3)
matrix(c(1,2,3,4,5,6), nr=6)

# numero de colunas
matrix(c(1,2,3,4,5,6), nc=2)

# Help
?matrix

# matriz precisam ter um numero de elementos q seja multiplo de nc ou nr
matrix(c(1,2,3,4,5), nc=2) # Erro

# Criando matrizes a partir de vetores e preenchendo por linha
meus_dados = c(1:10)
matrix(data = meus_dados,nrow = 5, ncol = 2, byrow = T)

# Fatiando a matriz
mat = matrix(c(2,3,4,5), nr=2)
mat
mat[1,2]
mat[,2]
mat[1,3] # erro

# Matriz diagonal
matriz = 1:3
diag(matriz)

# Transposta da matriz
w = matrix(c(2,4,8,12), nr=2, ncol=2)
w
t(w)
u = t(w)
u

# matriz inversa
solve(w)

# Multiplicação de matrizes
mat1 = matrix(c(2,3,4,5), nr=2)
mat1
mat2 = matrix(c(6,7,8,9),nr=2)
mat2
mat1 * mat2
mat1 / mat2
mat1 + mat2
mat1 - mat2

# multiplicando matriz com vetor
x = c(1:4)
x
y = matrix(c(2,3,4,5),nr=2)
y
x * y

# Nomeando matriz
mat3 = matrix(c('Futebol','Natação','Campo','Piscina'),nr=2)
mat3

# nomear dimensoes da matriz ( Linhas, Colunas)
dimnames(mat3) = (list(c('linha1 ', 'linha2'), c('Col1', 'Col2'))) 
mat3

# Identificando colunas no momento de criação da matriz
mat3 = matrix(c('Futebol','Natação','Campo','Piscina'),nr=2, nc=2,dimnames = (list(c('linha1 ', 'linha2'), c('Col1', 'Col2'))) )
mat3

# Combinar matrizes

mat4 = matrix(c(2,3,4,5), nr =2)
mat4
mat5 = matrix(c(6,7,8,9),nr=2)
mat5
cbind(mat4 , mat5) # concatena por coluna
rbind(mat4, mat5) # concate por linha

# Desconstruindo a matriz
c(mat4)







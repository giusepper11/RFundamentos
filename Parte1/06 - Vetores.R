# Vetores

#Criar vetores c() ou seq() ou rep()

# vetor de caracteres
vetor_caracter = c('oi', 'dsa')
vetor_caracter

# vetor de numeros floats
vetor_numerico = c(1.9,45.3,300.7)
vetor_numerico

# vetor de numeros complexos
vetor_complex = c(5.2+3i,3.8-4i)
vetor_complex

# vetor valores lógicos
vetor_logico = c(TRUE<FALSE,TRUE)
vetor_logico

# vetor de numeros inteiros
vetor_int = c(2,4,6)
vetor_int

# utilizando seq() - sequencia de x a y
vetor1 = seq(1:99)
vetor1
is.vector(vetor1) # True

# utilizando rep()
vetor2 = rep(1:5)
vetor2


# indexação
a = c(5,4,3,2,1)
a
a[1] # 5
a[6] # NA

b = c('data', 'science')
b
b[1]
b[2]
b[1:2]

# combinando vetores
v1 = c(2,3,5)
v2 = c('aa','bb','cc','dd','ee')
c(v1,v2)

# operadores com vetores

x = c(1,3,5,7)
y = c(2,4,6,8)

x * 5
x + y
x - y
x * y
x / y

# somando vetores com numero difetente de elementos
alfa = c(10,20,30)
beta = c(1,2,3,4,5,6,7,8,9)
alfa + beta

# vetor nomeado
v = c('barack','obama')
v
names(v) = c('nome', 'sobrenome')
v
v['nome']




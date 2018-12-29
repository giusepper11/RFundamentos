# Tipos de Dados

# Numeric - Todos os numeros criados em R são tipo numerico

num = 2.5
num

num2 = 4
num2

x = -1
x
class(x) # verificar tipo da variavel

# Conversão de tipos Numeric
is.integer(num2)
y = as.integer(num2)
class(y)

x2 = 3.14
x2
y2 = as.integer(3.14)
y2

as.integer('4.27')
as.integer('Joe')
as.integer("Joe")
as.integer(TRUE)
as.integer(FALSE)

# Caracteres
char1 = 'A'
char1

char2 = 'bolha'
char2

#complexos
compl = 2.5 + 4i
compl
class(compl)

sqrt(-1)
sqrt(-1+0i)
sqrt(as.complex(-1))

# Logica
x =1; y =2
z = x > y
z
class(z)

u = TRUE; v = FALSE
u & v # AND
u | v # OR
!u # negacao

# operacoes com 0
5/0
0/5

# erro
'giu'/5






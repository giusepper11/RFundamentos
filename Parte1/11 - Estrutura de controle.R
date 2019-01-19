# Estruturas de controle

# if - else
x = 25
if (x > 30) {
  "Este numero é menor que 30"
} else {
  'ou'
}

# comandos aninhados

x = 7
if (x < 7) {
  'Este numero é menor que 7'
} else if (x == 7) {
  'Este numero é 7'
} else {
  'Este numero não é menor que 7'
}

# ifelse

ifelse(x >= 7, 'Correto', NA)
ifelse(x < 8, 'Correto', NA)

#Expressoes aninhadas
x = c(7, 5, 4)
ifelse(x < 5, 'Menor que 5',
       ifelse(x == 5, 'Igual a 5', 'Maior que 5'))

# Estruturas if dentro de funcoes
func1 = function(x, y) {
  ifelse(y < 7, x + y, 'Não encontrado!')
}

func1(4, 2)
func1(40, 7)

#REP reptir comando
rep(rnorm(10), 5)

# Repeat
x = 1
repeat {
  x = x + 3
  if (x > 99)
    break
  print(x)
}

# loop for
for (i in 1:20) {
  print(i)
}

for (q in rnorm(10)) {
  print(q)
}

# ignora alguns elementos dentro do loop
for (i in 2:22) {
  if (i == 13) {
    next
  }
  
  print(i)
}

# interromper o loop
for (i in 1:22) {
  if (i == 13) {
    break
  }
  print(i)
}

# loop while
x = 1
while (x < 5) {
  x = x + 1
  print(x)
}

# o loop while nao sera executado
y = 6
while (y < 5) {
  y = y + 10
  print(y)
}



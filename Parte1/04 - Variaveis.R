# tipos de variaveis em R

# criando variavel

var1 = 367
var1
mode(var1) # retorna tipo de armazenamento 
help("mode")
sqrt(var1)


var2 = as.integer(var1)
var2
mode(var2) # mesmo sendo int, R usa o numeric como armazenamento
typeof(var2) # tipo de variavel

var3 = c('seg','ter','qua')
var3
mode(var3)

var4 = function(x){x+3}
var4
mode(var4)

#Mudando tipo do dado
var5 = as.character(var1)
var5
mode(var5)

#  Atribuindo valores a objetos
x <- c(4,5,6)
x
c(1,2,3) -> y
y
assign("xy",c(1,3,5,6))

#Valor em uma posição especifica
x[1]

#verificar objetos
ls()
objects()

rm(x)
x









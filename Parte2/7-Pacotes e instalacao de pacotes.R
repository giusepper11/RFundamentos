# Pacotes e Instalação de Pacotes

# De onde vem as funções? Pacotes (conjuntos de funções)
# Quando você inicia o RStudio, alguns pacotes são 
# carregados por padrão

search()

install.packages(c('ggvis','tm','dplyr'),dependencies=TRUE, INSTALL_opts = c('--no-lock'))
library(ggvis)
library(tm)
require(dplyr) # mesma funcao do library, mas pode ser carregando dentro de uma função

search()
?require
detach(package:dplyr)
?attach # anexar um dataset em um ambiente de trabalho

ls(pos= 'package:tm')
ls(getNamespace('tm'), all.names=TRUE) # listar todas as funçoes disponiveis em um pacote

lsf.str('package:tm') # listar todas as funções e seus parametros
lsf.str('package:ggplot2')
library(ggplot2)
lsf.str('package:ggplot2')


# R possui um conjunto de datasets preinstalados.
# Observar datasets packages

library(MASS)
data()
?lynx
head(lynx)
head(iris)
tail(lynx)
summary(lynx)

plot(lynx)
hist(lynx)
head(iris)
iris$Sepal.Length
sum(Sepal.Length)

attach(iris)
sum(Sepal.Length)












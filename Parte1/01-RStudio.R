#Explorando o 01-RStudio.R

# Nome dos Contributors
contributors()

# lincença
sessionInfo()

# Imprimir na tela
print('R - Uma das principais ferramentas do Cientista de Dados')

# Criar gráficos
plot(1:10)
hist(rnorm(10)) # rnorm > cria uma distribuiçâo normal

# instalar pacotes
install.packages('randomForest')
install.packages('ggplot2')

# carregar o pacote
library(ggplot2)

# decarregar o pacote
detach(package:ggplot2)

# Se souber o nome da função
help(mean)
?mean

# Se não souber o nome da função
help.search('randomForest')
help.search('matplot')
??matplot
RSiteSearch('matplot')
example('matplot')




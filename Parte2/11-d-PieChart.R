# Graficos de pizza

?pie

# criando as fatias
fatias = c(40, 20,40)

# Nomeando paises
paises = c('Brasil','Argentina','Chile')

# unindo paises e fatias
paises = paste(paises,fatias) # paste une 2 vetores por sua ordem

# para especificar os label futuramente
paises = paste(paises, "%", sep='')
colors()

# Construindo um grafico
pie(fatias, labels = paises,
    col = c('darksalmon','gainsboro','lemonchiffon4'),
    main = 'Distribuição de vendas')

# Trabalhando com dataframes
?iris
attach(iris)
Values = table(Species)
labels = paste(names(Values))
pie(Values, labels = labels, main = 'Distrubuição de Espécies')

# 3D

library(plotrix)
pie3D(fatias, labels =paises, explode = 0.05, col=c('steelblue1','tomato2','tan3'), 
      main='Distribuição de vendas')

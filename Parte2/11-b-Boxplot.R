# boxplot

?boxplot
?sleep

# Permite utilizar as colunas sem especificar o nome do dataset
attach(sleep)

# Construcao do boxplot
sleepboxplot <- boxplot(data=sleep, extra ~ group,
                        main = 'Duração do sono',
                        col.main ='red', ylab='Horas',xlab = 'Droga')

# calculo da média
means = by(extra, group, mean)
means

# Adiciona a media ao gráfico
points(means, col= 'red')

# Boxplot horizontal
horizontalboxplot <- boxplot(data = sleep, extra~group,
                             ylab='', xlab='', horizontal=T,
                             col = c('blue','red'))

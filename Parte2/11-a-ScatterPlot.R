# Scatterplots

# Define os dados
set.seed(67)
x = rnorm(10,5,7)
y = rpois(10,7)
z = rnorm(10,6,7)
t = rpois(10,9)

# Cria o Plot
plot(x, y, col=123, pch=10, main = 'Multi Scatterplot', col.main='red', cex.main=2.5, xlab = 'indep', ylab = 'depend')

# Adiciona outros dados
points(z, t, col='blue', pch =7)

# adiciona outros dados
points(y,t, col=777, pch =9)

# cria legenda
legend(-6,5.9, legend = c('Nivel 1', 'Nivel 2', 'Nivel 3'), col=c(123,'blue','777'),pch = c(10,7,9),
       cex=0.65, bty='n')

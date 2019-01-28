## ggplot2

# um sistema grafico completo, alternativo ao 
# sistema basico de graficos do R
# Ofereçe mais opções de modificações, legendas prontas,
# formatação mais solida

install.packages('ggplot2')
library(ggplot2)

# Plotando um gráfico básico com qplot()
data(tips, package = 'reshape2') # carrega o dataset tips do pacote reshape2
qplot(total_bill, tip, data=tips, geom ='point') # formato geometrico de pontos

# Camada 1
camada1 <- geom_point(
  mapping = aes(x=total_bill, y=tip, color = sex), # mapear as variaveis dentro do grafico
  data = tips,
  size =3
)
ggplot() + camada1

?aes # mapeamento estetico dentro do grafico

# Construindo um modelo de regressão
modelo_base <- lm(tip~total_bill, data=tips)
modelo_fit <- data.frame(
  total_bill = tips$total_bill,
  predict(modelo_base, interval='confidence')
)

head(modelo_fit)

# Camada 2
camada2 = geom_line(
  mapping = aes(x=total_bill, y =fit),
  data = modelo_fit,
  color = 'darkred'
)
ggplot()+camada1+camada2


# Camada 3

camada3 = geom_ribbon(
  data=modelo_fit,
  mapping = aes(x=total_bill, ymin =lwr, ymax=upr),
  alpha=0.3
)
ggplot() + camada1 + camada2 + camada3

# Versão final otimizada

ggplot(tips, aes(x= total_bill, y=tip)) +
  geom_point(aes(color=sex)) +
  geom_smooth(method = 'lm')

# Gravando o grafico em um objeto

myplot = ggplot(tips, aes(x= total_bill, y=tip)) +
  geom_point(aes(color=sex)) +
  geom_smooth(method = 'lm') # Gera o conteudo estatistico do grafico

class(myplot)
print(myplot)

# Scatterplot com linha de regressão

# Dados
data = data.frame(cond = rep(c('Obs1','Obs2'),
                             each=10), var1 = 1:100 + rnorm(100, sd=9),
                                        var2 = 1:100 + rnorm(100, sd=16))

# Plot
ggplot(data,aes(x = var1, y = var2))+
  geom_point(shape=1) + 
  geom_smooth(method = lm, color= 'red', se=FALSE) # Gera o conteudo estatistico do grafico

?lm

# Bar plots

#Dados
data = data.frame(
  grupo = c('A','B','C','D'),
  valor = c(33,62,56,67),
  num_obs = c(100,500, 459, 342)
)

# Gerando a massa de dados
data$rigth = cumsum(data$num_obs) + 30 * c(0:(nrow(data)-1))
data$left = data$rigth - data$num_obs

# plot
ggplot(data, aes(ymin=0))+
  geom_rect(aes(xmin=left, xmax=rigth,
                ymax = valor, colour=grupo, fill = grupo)) +
  xlab('Numero de obs') + ylab('Valor')


# Usando dataset mtcars
head(mtcars)
ggplot(data=mtcars, aes(x = disp, y=mpg)) + geom_point()

# Mapear a cor dos pontos com variavel categorica
ggplot(data=mtcars, aes(x = disp, y=mpg,
                        colour = as.factor(am))) + geom_point()

# Mapear a cor dos pontos com variavel continua
ggplot(data=mtcars, aes(x = disp, y=mpg,
                        colour = -cyl)) + geom_point() # o - na variavel cor altera a ordem


# Mapear o tamno dos pontas à uma variavel de interesse
# a legenda é inserida no grafico automaticamente
ggplot(data=mtcars, aes(x = disp, y=mpg,
                        colour = -cyl, size=wt)) + geom_point()

# Os geoms definem qual forma geometrica será utilixada para a visulização de dados no grafico
ggplot(mtcars, aes(x=as.factor(cyl), y=mpg)) + geom_boxplot()

# histogramas
ggplot(mtcars, aes(x=mpg), binwidth = 30) + geom_histogram()

# Grafico de barras
ggplot(mtcars, aes(x = as.factor(cyl))) + geom_bar()

# Personalizando o grafico
colors()

ggplot(mtcars, aes(x=as.factor(cyl), y=mpg, colour=as.factor(cyl))) + geom_boxplot()

ggplot(mtcars, aes(x=as.factor(cyl), y=mpg, fill=as.factor(cyl))) + geom_boxplot()

ggplot(mtcars, aes(x=as.factor(cyl), y=mpg)) + 
  geom_boxplot(color='blue', fill='seagreen4')

# Alterando os eixos

ggplot(mtcars, aes(x=mpg)) +
  geom_histogram()+
  xlab('Milhas por gallon') + ylab('Frequencia')

# Alterar os limites do grafico

ggplot(mtcars, aes(x=mpg)) +
  geom_histogram() +
  xlab('Milhas por gallon') + ylab('Frequencia') +
  xlim(c(0,40)) + ylim(c(0,8))

# Legendas

ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
  geom_bar() +
  labs(fill = "cyl")

# Trocando a posição da legenda
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
  geom_bar() +
  labs(fill = "cyl") +
  theme(legend.position="top")


# Sem legenda
ggplot(mtcars, aes(x = as.factor(cyl), fill = as.factor(cyl))) + 
  geom_bar() +
  guides(fill=FALSE)

# Facets # dividdir o grafico de acordo com alguma variavel
ggplot(mtcars, aes(x=mpg, y=disp, color=as.factor(cyl))) +
  geom_point() + 
  facet_grid(am~.) # horizontal

ggplot(mtcars, aes(x=mpg, y=disp, color=as.factor(cyl))) +
  geom_point() + 
  facet_grid(.~am) # vertical

# plots diferentes juntos (diferente do facet que é o mesmo grafico dividido)
install.packages('gridExtra')
library(gridExtra)
library(ggplot2)

# Dataset diamonds
data("diamonds")

# histograma com plot1
plot1 = qplot(price, data=diamonds, binwidth =1000)

# scatterplot como plot2
plot2 = qplot(carat, price, data = diamonds, colour = cut)

# Combina os 2 plots na mesma área
grid.arrange(plot1, plot2, ncol=1)


# Graficos de densidade
ggplot(data = diamonds, aes(x=price, group=cut, fill=cut)) + geom_density(adjust = 1.5)

ggplot(data = diamonds, aes(x=price, group=cut, fill=cut)) + geom_density(adjust = 1.5, alpha=0.2)

ggplot(data = diamonds, aes(x=price, group=cut, fill=cut)) + geom_density(adjust = 1.5, position = 'fill')

# Facets com Reshape
library(reshape2)
install.packages('plotly',dependencies=TRUE, INSTALL_opts = c('--no-lock'))
install.packages('sf',dependencies=TRUE, INSTALL_opts = c('--no-lock'))

library(plotly)

sp <- ggplot(tips, aes(x=total_bill, y=tip/total_bill)) + geom_point(shape=1)
sp + facet_grid(sex ~ .)
ggplotly()
sp + facet_grid(. ~ sex)
ggplotly()
sp + facet_wrap( ~ day, ncol = 2)
ggplotly()


ggplot(mpg, aes(displ, hwy)) + geom_point() + facet_wrap(~manufacturer)
ggplotly()


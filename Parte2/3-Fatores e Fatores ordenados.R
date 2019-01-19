# Fatores

vec1 = c('Macho','Femea','Femea','Macho','Macho')
vec1
fac_vec1 = factor(vec1)
fac_vec1
class(vec1)
class(fac_vec1)

# Variaveis categoricas nominais
# nao existe uma ordem implicita

animais = c('Zebra','Pantera','Rinoceronte','Macaco','Tigre')
animais
class(animais)
fac_animais = factor(animais)
fac_animais
class(fac_animais)
levels(fac_animais)


# Variaveis categoricas ordinais
# possuem uma ordem natural

grad = c('mestrado', 'doutorado', 'bacharelado', 'mestrado', 'mestrado')
grad
fac_grad = factor(grad, order= TRUE, levels = c('doutorado','mestrado','bacharelado'))
fac_grad
levels(fac_grad)

# Sumarizar os dados fornece uma visao geral do conteudo
summary(fac_animais)
summary(fac_grad)

vec2 = c('m','f','f','m','m','m','f','f','m','m','f','f','m','m','m')
fac_vec2 = factor(vec2)
fac_vec2
levels(fac_vec2) = c('Femea', 'Macho')
fac_vec2
summary(fac_vec2)
summary(vec2)


# exemplos
data = c(1,2,2,3,1,2,3,3,2,2,1,1,3,1)
fdata = factor(data)
fdata

rdata = factor(data, labels =c('I','II','III'))
rdata

# Fatores nao ordenados
set1 = c('AA','B','BA','CC','CA', 'AA', 'BA', 'CC')
set1

# Transformando os dados. O R apenas criou os niveis
f.set1 = factor(set1)
f.set1
class(f.set1)
is.ordered(f.set1)

# Fatores ordenados
o.set1 = factor(
  set1,
  levels = c('CA','BA','AA', 'CC', 'B'),
  ordered = TRUE
)

o.set1
is.ordered(o.set1)

as.numeric(o.set1)
table(o.set1)

# Fatores e dataframes
df = read.csv2('etnias.csv', sep=',')
df

str(df)


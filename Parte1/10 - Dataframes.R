# Dataframe

#Criando dataframe

df = data.frame()
class(df)
df

#Criando vetores vazios
nomes = character()
idades = numeric()
datas = as.Date(character())
codigo = integer()

df = data.frame(c(nomes,idades,datas,codigo))
df

#Criando vetores
pais = c("eua","dinamarca","holanda","espanha","brasil")
nome = c('Mauricio','pedro','aline','beatriz','marta')
altura = c(1.7,1.6,1.5,1.5,1.7)
codigo = c(1,2,3,4,5)

#criando dataframe
pesquisa = data.frame(pais,nome,altura,codigo)
pesquisa


# adicionando um novo vetor a um dataframe existente
olhos = c('verde','azul','azul','castanho','castanho')
pesquisa = cbind(pesquisa,olhos)
pesquisa

# informações sobre o dataframe
str(pesquisa)
dim(pesquisa)
length(pesquisa)

# obtendo um vetor de um dataframe
pesquisa
pesquisa$nome

# extraindo um unico valor
pesquisa[1,1]
pesquisa[3,2]

# numero de linhas e colunas
nrow(pesquisa)
ncol(pesquisa)

# primeiras linhas do datagrame
head(pesquisa)
head(mtcars)

# ultimos elementos do dataframe
tail(pesquisa)
tail(mtcars)

# Data frame builtin do R
?mtcars
mtcars

# filtro para um subset de dados que atendem a um criterio
pesquisa[altura<1.6,]
pesquisa[altura< 1.6, c('codigo','olhos')]
pesquisa

# Dataframes nomeados
names(pesquisa) = c('Pais','Nome','Altura','Codigo','Olhos')
pesquisa

# inserindo nomes para colunas e linhas
colnames(pesquisa)= c('var1','var2','var3','var4','var5')
pesquisa
rownames(pesquisa)= c('ob1','ob2','ob3','ob4','ob5')
pesquisa

#importando arquivos
# read.xls() - Excel
# read.mtp() - Minitab
# read.spss() - SPSS
# read.table() - Arquivos txt
# read.csv() - Arquivos csv
# read.delim() - leitura de arquivos delimitados

?read.csv

df2 = data.frame(read.csv('dframe.csv', header = TRUE, sep = ','))
head(df2,2)
summary(df2)

df2$Diabete
df2$Status
df2$status

plot(df2$Admdate)

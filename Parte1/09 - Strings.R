# Strings

#string
texto = 'isto é uma string!'
texto

x = as.character(3.14)
x
class(x)

# Concatenando string

nome= 'Barack';sobrenome='Obama'
paste(nome,sobrenome)
cat(nome,sobrenome)

# formantando saindo
sprintf("%s governa os EUA há %s anos","Barack Obama",8)

# extraindo parte da string
texto = 'isto é uma string'
substr(texto,start=12,stop=17)
?substr

# contando o numero de caracteres
nchar(texto)

# alterando a capitalização
tolower(texto)
toupper(texto)

# usando stringr
library(stringr)

# Dividindo uma string em caracteres

strsplit('Histogramas e Elementos de Dados', NULL)
?strsplit

strsplit('Histogramas e Elementos de Dados',' ')

# Trabalajando com string
string1 = c('Esta é a primeira parte do meu vetor', 'Aqui a minha string continua ,mas sera transformada em segundo vetor')
string1

string2 = c('2Esta é a primeira parte do meu vetor', '2Aqui a minha string continua ,mas sera transformada em segundo vetor')
string2

# adicionando 2 strings
str_c(c(string1,string2),sep='')

# Contar a ocorrencia de um caracter no texto
str_count(string1,'s')

# Localiza localizacao exata de todas ocorencias de um caracter na string
str_locate_all(string1,'s')

# Substituir caracter na primeira ocorrencia
str_replace(string2, "\\s",'')

# Substitui todas as ocorrencias do caracter
str_replace_all(string2, '\\s','')

# Detectando padroes nas strings
string1 = '23 mai 2000'
string2 = '1 mai 2000'
padrao = 'mai 20'

grepl(pattern = padrao, x=string1)
padrao = 'mai20'
grepl(pattern = padrao, x=string1)


# importando arquivo de textp
arquivo <- c(read.delim('http://www.gutenberg.org/files/100/100-0.txt',row.names=NULL))

head(arquivo)
tail(arquivo)

str_count(arquivo, '7')
str_locate_all(arquivo, '7')

# criando funcoes para manipular strings
strtail <- function(s,n=1){
  if(n<1)
    substring(s,1-n)
  else
    substring(s,nchar(s)-n+1)
}

strtail("String de Teste",6)

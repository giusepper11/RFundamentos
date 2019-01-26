# Expressões Regulares

# grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)
# grepl(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# sub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gsub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# regexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gregexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)

str <- c("Expressões", "regulares", "em linguagem R", 
         "permitem a busca de padrões", "e exploração de textos",
         "podemos buscar padrões em dígitos",
         "como por exemplo",
         "10992451280")

length(str)
str

# grep()
grep('ex', str, value = F) # value = F retorna os indices no vetor
grep('ex', str, value = T) # value T retorna os textos onde forem encontrados
grep('\\d', str, value = F) # encontrando indice onde possui digito (\\d)
grep('\\d', str, value = T) # encontrando fragmento que possui digitos

# grepl()
grepl('\\d+', str) # retorna boleano de digitos encontrados
grepl("\\D+",str) # retorna boleano de não digitos encontrado

# gsub() # substitui todos os pdraos encontrados
gsub('em', 'i', str) # substitui string confome padrao
gsub('ex', 'EX', str, ignore.case = T) # ignora o case

# sub() # substitui apenas o primeiro padrao encontrado
sub('em', "EM", str)

# regexpr()
frase <- 'Isso é uma string'
regexpr(pattern = 'u', frase) # retorna um vetor com indice

# gregexpr() 
gregexpr(pattern = 'u', frase) # retorna uma lista com o indice


str2 <- c("2678 é maior que 45 - @???!§$",
          "Vamos escrever 14 scripts R")

str2

# gsub()
gsub("\\d", '', str2)
gsub('\\D', '', str2)
gsub('\\s','',str2)
gsub('[iot]', 'Q',str2)
gsub('[[:punct:]]', '', str2)
gsub('[^@]','',str2)

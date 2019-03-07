# Conceitos basicos de linguagem R
# R é uma linguagem orientada a objetos 
# Indexação começa em 1 

#### pacotes famosos ####
install.packages("dplyr")
install.packages("tidyr")
install.packages("xlsx")
install.packages("lubridate")
install.packages("ggplot2")
install.packages("moments")
install.packages("caret")
install.packages("quantmod")
install.packages("stringr")
install.packages("data.base")

library(dplyr)
library(tidyr)
library(xlsx)
library(lubridate)
library(ggplot2)
library(moments)
library(caret)
library(quantmod)
library(stringr)
library(data.base)

#### HELP ####

help(mean)
?mean
install.packages("sos")
library(sos)
findFn("fread")

help.search('randomForest')
??matplot
RSiteSearch('matplot')
example('matplot')

#### Listar conteudo dos pacotes ####

ls(pos = "package:ggplot2")
ls(getNamespace("ggplot2"),all.names = T)
lsf.str("package:ggplot2")

#### OPERADORES ####
 
 #E
 (x==8) & (y>=9)
 
 #OU
 (x==8) | (y>=9)
 
 #DIFERENTE DE
 x != 8
 
 #NEGATIVO
 !x > 8
 
 
 #### VARIAVEIS ####
# É possivel utilizar =, <-. ou assign() para declarar:
 
 x1<-2
 x2=4
 assign("x3",c(6,2,3))
 
 #### Verificar tipos de objetos ####
 
 mode(x3)
 typeof(x3)
 class(x3)
 
 #### Verificar objetos criados ####

 ls()
 objects()
 
 #### remover objetos ####
 
 rm()
 rm(list = ls())
 
 #### tipos avançados de dados ####
 
 #1-Vetor 1 dimensao e 1 tipo de dado
 vetor1 <- c(1:20)
 mode(vetor1)
 typeof(vetor1)
 class(vetor1)
 
 #vetor nomeado
 V<-c("FELIPE","DEMOLIN")
 names(V)<-c("NOME","SOBRENOME")
 V
 V["NOME"]
 
 
 #2-matrix 2 dimensoes e 1 tipo de dado
 matrix1 <- matrix(1:20, nrow = 2)
 mode(matrix1)
 typeof(matrix1)
 class(matrix1)
 ?matrix
 
 matrix2 <- matrix(1:20, nc = 2, byrow = TRUE)
 matrix3 <- matrix(1:20, nc = 2, byrow = FALSE)
 matrix2 
 matrix3
 
 #transposta 
 t(matrix1)
 
 #diagonal 
 diag(1:3)
 
 #matriz inversa
 solve(matrix)
 
 #Combinação de matrizes
 cbind() #Uniao por colunas
 rbind() #Uniao por linhas
 
 #Desconstruindo matrizes (transforma em vetor)
 
 c(matriz)
 
 
 #3-array n dimensoes e 1 tipo de dado
 array1 <- array(1:5, dim = c(3,3,3))
 mode(array1)
 typeof(array1)
 class(array1)
 
 #4-dataframes 2 dimensoes e n tipos de dado
 View(iris)
 length(iris)
 mode(iris)
 typeof(iris)
 class(iris)
 
 #Informaçoes do DF
 str(df) #info gerais
 dim(df) #n col e n rows
 lenght(df) #n col
 df$col #retorna a coluna
 
 
 #5-list n dimensoes e n tipos de dado
 lista1 <- list(a= matrix1, b = vetor1)
 length( lista1 )

 lengths(lista1)
 length(lista1)
 
 names(lista) <- c("Nome1","Nome2") #atribui nomes aos elementos da lista
 
 mode( lista1 )
 typeof( lista1 )
 class( lista1 ) #MOSTRA SE É UM VETOR LISTA MATRIX OU DF

 
 #### STRINGS####

 x = as.characer(2.14) #Conver num em string
 paste("Felipe", "Demolin") #Imprime
 cat("Felipe", "Demolin") #Imprime
 
 #formatando a saida
 sprintf("A %s é nota %d", "DSA", 10)
 
 #substring
 substr("O homem é dono do que cala", start = 10, stop= 14)
 
 #Contar caracteres
 nchar("O homem é dono do que cala")
 
 tolower() #tudo minusculo
 toupper() #tudo maisculo
 
 # pacote stringr
 
 strsplit("Uma frase qualquer", split = NULL) #quebra a string dado o parametro de quebra
 str_c(c("Primeiro Numero","Segundo Numero"),sep=) #concatena
 str_count("O Homem é dono do que cala", "o") #conta o caracter
 str_locate_all("O Homem é dono do que cala", "o") #encontra o caracter
 str_replace("String","S","") #Substitui a primeira ocorrencia
 str_replace_all() #substitui todas as ocorrencias
 grepl(pattern = "dono", x= "O Homem é dono do que cala") #Retorna true se encontrar um padrao fornecido na string
 
 #### FATORES ####
 
 #Podem ser ou não ordernados
 
 notas <- c('A','B','A','C','A','D','B')
 
 fatornota <- factor(notas, ordered = TRUE, levels = c('A','B','C','D'), labels = c('V','A','Q','Z'))
 
 class(fatornota)
 fatornota
 summary(fatornota)
 
 #### FUNÇÃO ####
 
 somaeprinta<-function(n1,n2){
   
   n<-n1+n2
   return(n)
   
 }
 
 somaeprinta(436,643)
 
 #### UNLIST ####
 
 # Achata uma lista - varias dimensoes em 1 unica
 
 unlist
 
 #### FIND & REPLACE ####

 grep() #Retorna se encontrou ou nao o padrao, se value = F retorna o indice, se value = T retorna a string toda
 grepl() #retorna verdadeiro ou falso
 gsub() #find&replace
 regexpr() #Encontrar a posicao do padrao
 
 #### DATAS ####
 
 # Data DATE e time POSIXT
 # Funcao ISOdate() para datas padrao
 install.packages("lubridate")
 library(lubridate)
 ymd("20180604")
mdy("06-04-2018") 
dmy("04/06/2018") 

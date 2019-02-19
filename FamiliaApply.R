### FAMILIA APPLY ###

# apply() - arrays e matrizes
# tapply() - vetores podem ser divididos em subsets
# lapply() - vetores e listas, aplica funcões para cada elemento
# sapply() - versão amigavel da lapply
# vapply() - similiar a lapply, retorno modificado
# rapply() - similar a lapply
# eapply() - gera lista
# mapply() - similiar a sapply, multivariada
# by 

#Modo de uso:

#list, numeric, character (list/vector): sapply ou lapply
# matrix ou data.frame, quando deseja agregar por coluna: by/tapply
# Calculos por linha ou por coluna especifica: apply
iris2 <- iris
head(iris2)

#Apply aplica a formula por linha:
iris2$meanLength <- apply(iris2[,c(1,3)], 1 , mean)

#Ou por coluna:
apply(iris2[,c(1:4)], 2 , mean)

#tapply realiza agregações
tapply(iris2$Sepal.Length, iris2$Species, mean)
#by realiza agregações tbm, mas por outro meio
by(iris2,iris2$Species,function(x){media<-mean(iris2$Sepal.Length)})


### DO.CALL ###

list1 <- list(1:4,3:5,3:10)
lapply(list1, sum) #retorna soma de cada elemento da lista
do.call(sum,list1) #retorna soma geral

#DO.CALL geralmente é usado quando cada linhas esta em um elemento da lista, entao transformamos em dataframe usando rbind



### SOBRE DATAFRAMES ###


### BÁSICO ###

#Informaçoes do DF
attach(iris)
str(iris) #info gerais
summary(iris)
dim(iris) #n col e n rows
length(iris) #n col
iris$Petal.Length #retorna a coluna
nrow(iris)
ncol(iris)
cbind(iris,1)
rbind(iris,1)
View(iris)
head(iris)
colnames(iris)[5]
rownames(iris)[5]

#Filtros
iris[((Sepal.Length == 5.0) | (Sepal.Width == 3.2)) , c(1,2)]

lengths(iris[(Sepal.Length = 5.0), c(1,2)])

x=subset(iris, (Sepal.Length == 5.0) | (Sepal.Width == 3.2), select = c(1,2,3) )
lengths(x)
?subset

#Combinando DFs
lengths(iris)
lengths(merge(iris,iris))

16%%3

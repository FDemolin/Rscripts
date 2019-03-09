install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)


attach(iris)

irisplot1<- iris %>%
  group_by(Species) %>% 
  summarise(media = mean(Sepal.Length))

colnames(irisplot1) = c("Tipo","Media")

head(irisplot1)

x<-barplot(irisplot1$Media, names.arg=irisplot1$Tipo, 
        xlab = "ESPECIE", ylab = "MEDIA", 
        col = irisplot1$Tipo, 
       )

text(x, irisplot1$Media, irisplot1$Media, pos = 1, col = "white")

legend("topleft", pch = 12, col = irisplot1$Tipo, legend =irisplot1$Tipo)


#### GGPLOT2 ####

#Camada 01

C1 <- geom_point(
                  mapping = aes(x=Sepal.Length, y=Petal.Length, color = Species),
                  data = iris,
                  size = 4
)

ggplot() + C1

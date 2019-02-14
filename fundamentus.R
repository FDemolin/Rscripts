list.of.packages <- c("rvest", "stringr","tidyr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

library(rvest)
library(stringr)
library(tidyr)

# Extraindo a página web
url <- url("http://www.fundamentus.com.br/resultado.php","rb")
pagina <- read_html(url)
tabela <- html_nodes(pagina, 'table')
tab <- html_table(tabela)[[1]]
class(tab)
head(tab)

write.csv2(tab,"D:\\Bolsa\\Fundamentus.csv", row.names=FALSE)

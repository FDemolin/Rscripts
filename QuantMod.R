rm(list = ls())
#### Packages Download & Call ####
packs <- c("quantmod",  "xts","moments","ggplot2","tidyr","dplyr","readr","gapminder","caret","gridExtra")
new.packages <- packs[!(packs %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
lapply(packs, require, character.only = TRUE)


startDate = as.Date("2018-01-01")
endDate = as.Date(Sys.Date()-1)
carteira<-c("PETR4.SA","ITSA4.SA","UNIP6.SA","SHUL4.SA","KROT3.SA","VVAR3.SA")
ncarteira <- 

for(i in carteira){
  
 getSymbols(i, src = "yahoo", from = startDate, to = endDate, auto.assign = T)
  
}

layout(matrix(1:6,nrow=3,ncol=2), height=c(2,2,2))

for(j in 1:length(carteira)){
  
 candleChart(as.name(carteira[j]),layout=NULL, color.vol = F, TA=c("addBBands()"),  theme = chartTheme('white',up.col='blue',dn.col='red') )
  
}

for(j in 1:length(carteira)){
  print(as.name(carteira[j]))
  
}

noquote(carteira)

#candleChart(KROT3.SA,layout=NULL, color.vol = F, TA=c("addBBands()"))
#addBBands(n = 20, sd = 2)
#addADX(n = 11, maType = "EMA")



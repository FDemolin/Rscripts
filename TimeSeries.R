#### Packages Download & Call ####
packs <- c("quantmod",  "xts","moments","ggplot2","tidyr","dplyr","readr","gapminder","caret","gridExtra","ggthemes","forecast")
new.packages <- packs[!(packs %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
lapply(packs, require, character.only = TRUE)



autoplot(presidents)
prev = auto.arima(presidents)
autoplot(prev$residuals)
checkresiduals(prev) 
shapiro.test()
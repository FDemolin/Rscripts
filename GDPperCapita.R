list.of.packages <- c("WDI")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

library(WDI)

dat = WDI(indicator='NY.GDP.PCAP.KD', country=c('BRA','URY','CHL','ARG'), start=1960, end=2018)
head(dat)


library(ggplot2)
ggplot(dat, aes(year, NY.GDP.PCAP.KD, color=country)) + geom_line(size=1.4) + 
  xlab('Year') + ylab('GDP per capita')

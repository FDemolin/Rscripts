library(quantmod)

from <- c("USD")

to <- c("BRL")

data<-getQuote(paste0(from, to, "=X"))

data


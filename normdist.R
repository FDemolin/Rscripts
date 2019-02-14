

# Calculando a Distribuição Normal e Probabilidade da Amostra

# --- 1 --- Digite a media e desvio-padrão de sua mostra

media <- 3

sigma <- 1

# --- 2 --- Digite o intervalo que deseja descobrir a probabilidade

x0 <- 3

x <- 4

# --- 3 --- Desenho do Gráfico

range<- seq(media-4*sigma,media+4*sigma,0.01)
y = dnorm(range,media,sigma)
plot(range,y,main =, type='l',ylim = c(0,max(y)+0.01))

cord.a= c(0, seq(min(range),x,0.01),x)
cord.b = c(0, dnorm(seq(min(range),x,0.01),media,sigma),0)
polygon(cord.a,cord.b, col="blue")

cord.x= c(0, seq(min(range),x0,0.01),x0)
cord.y = c(0, dnorm(seq(min(range),x0,0.01),media,sigma),0)
polygon(cord.x,cord.y, col="gray")

cord.c= c(x, seq(x,max(range),0.01),x)
cord.d = c(0, dnorm(seq(x,max(range),0.01),media,sigma),0)
polygon(cord.c, cord.d, col="gray")

percent <- function(x, digits = 2, format = "f", ...) {
  paste0(formatC(100 * x, format = format, digits = digits, ...), "%")
}

# --- Calculo da Probabilidade (Integral da área marcada na distribuição)

percent(pnorm(x,media,sigma)-pnorm(x0,media,sigma))

pnorm(x,media,sigma)

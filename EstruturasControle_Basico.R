### ESTRUTURAS DE CONTROLE ###

### IF ELSE ###

x <- 7

if(x<7){
  print("X é menor que 7")
} else if(x==7){
  print("x é igual a 7")
} else{
  print("x é maior que 7")
}


ifelse(x<7, 
       "X é menor que 7",
       ("X é maior/igual que 7")
       )


### REP ###

rep(rnorm(10),5)

### REPEAT ###
x<-7
repeat {
  x = x+7
  if(x>40)
    break
  print(x)
}


### FOR ###

for(i in 1:20){
  if(i==7 | i==14){
    next
  }else if(i == 19){
    break
  }
  print(i)
}


### WHILE ###

x <- 7

while(x<14){
  x = x+2
  print(x)
}

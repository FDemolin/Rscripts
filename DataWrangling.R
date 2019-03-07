#### HEAD ####
#Built by: FDemolin, felipedemolin@hotmail.com
#2019-03-06 


#### Packages Download & Call ####
packs <- c("quantmod", "xts","moments","ggplot2","tidyr","dplyr","readr","gapminder")
new.packages <- packs[!(packs %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
lapply(packs, require, character.only = TRUE)

#### CODE ####


gapminder %>% 
    group_by(continent) %>% 
    summarise(Avg_Life = mean(lifeExp)) %>% 
    arrange(Avg_Life) %>% 
    ggplot(aes(x=reorder(continent, -Avg_Life),y=Avg_Life, fill=Avg_Life))+geom_bar(stat = "identity")
             
gapminder %>% 
  group_by(continent) %>% 
  summarise(Avg_Life = mean(lifeExp)) %>% 
  arrange(desc(continent))

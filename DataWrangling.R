#### HEAD ####
#Built by: FDemolin, felipedemolin@hotmail.com
#2019-03-06 


#### Packages Download & Call ####
packs <- c("quantmod", "xts","moments","ggplot2","tidyr","dplyr","readr","gapminder","caret")
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
  arrange(desc(continent)) %>% 
  spread(continent, Avg_Life)


gapminder %>% 
  select(-c("year","pop"))

gapminder %>% 
  subset(year == 2007) %>% 
  ggplot(aes(x=reorder(country, -lifeExp),y= lifeExp, fill=lifeExp))+geom_bar(stat = "identity") + theme(axis.text.x = element_text(angle = 90, hjust = 1))



dados <-data.frame(
  cidade =c("Franca","São Carlos", "Cristais Paulista", "Passos", "Uberaba",
             "Novo Hamburgo", "Porto Alegre", "Vitória", "Porto Seguro",
             "Nova Iorque"),
  estado =c("SP","SP","SP","MG","MG","RS","RS","ES","BA","NI"),
  país =c("BR","BR","BR","BR","BR","BR","BR","BR","BR","EUA")
)

print(dados[dados$estado == "SP",])

dados[dados$estado == "SP","DDD"]=10
dados[dados$estado == "MG","DDD"]=30

print(dados[dados$"DDD">20,])
print(dados[dados$"DDD"<20,])
print(dados[!is.na(dados$"DDD"),])
print(dados[(dados$"DDD">20) & !is.na(dados$"DDD"),])

install.packages("tibble")
library(tibble)
install.packages("dplyr")
library(dplyr)
install.packages("readr")
library(languageserver)

install.packages("data.table")
require("dplyr")
install.packages("dtplyr")
install.packages("arrow")
require("here")
install.packages("stringr")

dados_iris <- as.data.frame(datasets::iris)

dados_iris <- as_tibble(datasets::iris)

dados_iris %>% group_by(Species) %>% count()
dados_iris %>% group_by(Species) %>% summarise(mean(Petal.Length))



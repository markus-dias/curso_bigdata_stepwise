###
### Para mais detalhes da implementação e exemplos de uso
### https://cran.r-project.org/web/packages/jsonlite/vignettes/json-mapping.pdf
### https://search.r-project.org/CRAN/refmans/rjsoncons/html/paths_and_pointer.html
###

if (!require("jsonlite")) {
  install.packages("jsonlite")
  require("jsonlite")
}
if (!require("rjsoncons")) {
  install.packages("rjsoncons")
  require("rjsoncons")
}
if (!require("dplyr")) {
  install.packages("dplyr")
  require("dplyr")
}
if (!require("here")) {
  install.packages("here")
  require("here")
}

caminho_arquivos <- here("Aula05", "dados/carros_eletricos.json")

carros_eletricos <- fromJSON(caminho_arquivos, flatten = TRUE)
print(carros_eletricos)

resultado_busca_jsonpath <- jsonpath(carros_eletricos, "$.data", as = "R")
print(resultado_busca_jsonpath)

dados_carros_eletricos <- carros_eletricos$data
print(dados_carros_eletricos)

carros_eletricos <- as.data.frame(dados_carros_eletricos)
print(carros_eletricos)
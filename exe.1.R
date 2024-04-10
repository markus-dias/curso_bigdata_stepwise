### Crie uma função que dada uma lista de numeros retorna a mediana 

### Inputs
lista_numeros_01 <- c(0, 0, 1, 2, 3)
lista_numeros_02 <- c(0, 1, 2, 3)

### Corpo da Função
minha_mediana <- function(lista_numeros) {
  
}

### Resultado Esperado
1
1.5

minha_mediana <- function(lista){
  
  tamanho_lista = length(lista)
  
  if (tamanho_lista %% 2  == 1){
    mediana = lista[tamanho_lista/2 +0.5]
  }
  if (tamanho_lista %% 2  == 0){
    mediana = (lista[tamanho_lista/2] +lista[(tamanho_lista/2) +1])/2
  }

  return <- mediana
  
}

a <- minha_mediana(lista_numeros_01)
b <- minha_mediana(lista_numeros_02)

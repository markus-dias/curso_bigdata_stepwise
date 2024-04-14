### Cafeteria imaginária

### Exemplo Inputs
# numero_pedidos = 3
# tamanhos dos pedidos = 1, 2 e 5
# maquinas_de_cafe = 2

### Representação Input
# [1, 2, 5]

### Restrições de input
# 0 <= numero_pedidos <= 30
# 0 <= tamanho_dos_pedidos <= 40
# 0 <= maquinas_de_cafe <= numero_pedidos

# Cada máquina de café processa um café por vez  e leva 1 minuto. Após retirar 
# um café ela precisa de dois minutos para a limpeza

### Outputs
# Tempo total do pedido


# Input de referência
pedido_cenario_01 <- c(1, 1, 2)
n_maquinas_cafe_cenario_01 <- 4

pedido_02 <- c(1, 1, 2)
n_maquinas_cafe_cenario_02 <- 2


### Corpo da Função
maq_cafe <- function(lista_numeros, n_maquinas_cafe) {
  total_pedidos = sum(lista_numeros)
  if (total_pedidos %% n_maquinas_cafe  == 0){
    ped_por_maq = (total_pedidos %/% n_maquinas_cafe)
  }
  if (total_pedidos %% n_maquinas_cafe  > 0){
    ped_por_maq = (total_pedidos %/% n_maquinas_cafe) +1
  }  
  tempo = ped_por_maq + ped_por_maq*2
  return <-tempo
  
}

print(maq_cafe(pedido_cenario_01,n_maquinas_cafe_cenario_01))
print(maq_cafe(pedido_02,n_maquinas_cafe_cenario_02))

### Output esperado
# 4????
# 6
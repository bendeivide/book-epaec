#=================================================================================
# Código 3.1 - Os dados representam a temperatura (ºF) do anel de vedação de cada 
#              teste de acionamento ou lançamento real do motor do foguete Challen
#              ger
#-----------
# Como citar o livro:
# BATISTA, B. D. O.. Estatística e Probabilidade: aplicadas às Engenharias e Ciên-
# cias. Ouro Branco, MG: [s.n.]. 2023. XXX p.. ISBN 978-65-00-66079-1. Disponível 
# em: <https://bendeivide.github.io/book-epaec/>. Acesso em: 
#=================================================================================

# Anexando o pacote leem
library(leem)
# Importando o banco de dados
con <- url("https://raw.githubusercontent.com/bendeivide/book-epaec/master/dados/cap02/challenger.RData")
load(con); close(con)
# Calculando as medidas de posicao (dados agrupados)
challenger |>
  new_leem(variable = 2) |> # var. quant. continua
  mpos(grouped = TRUE) # Medidas de posicao
# Calculando as medidas de posicao
# (sem dados agrupados)
challenger |>
  new_leem(variable = 2) |> # var. quant. continua
  mpos(grouped = FALSE) # Medidas de posicao 
# Insrindo as medidas no histograma
challenger |>
  new_leem(variable = 2) |> # var. quant. continua
  hist(barcol = heat.colors(5)) |>
  insert(type = "all", lcol = c("black", "blue", "brown"),
         ptext = 0.08, larrow = 0.4)
  

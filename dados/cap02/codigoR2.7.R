#=================================================================================
# Código 2.7 - Os dados representam a temperatura (ºF) do anel de vedação de cada 
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
# Tabulando os dados
challenger |>
  new_leem(variable = 2) |>
  ogive()

#=================================================================================
# Cídigo 2.3 - Regiao dos 9 estados da Amazonia Legal
#-----------
# Como citar o livro:
# BATISTA, B. D. O.. Estatística e Probabilidade: aplicadas às Engenharias e Ciên-
# cias. Ouro Branco, MG: [s.n.]. 2023. XXX p.. ISBN 978-65-00-66079-1. Disponível 
# em: <https://bendeivide.github.io/book-epaec/>. Acesso em: 
#=================================================================================

# Instalando o pacote 'leem' (via CRAN)
install.packages("leem")
# (ou) Instalando via github
pkgs <- c("manipulate", "tkRplotR", 
          "tkrplot", "crayon")
install.packages(pkgs)
## Instalando o pacote 'devtools'
install.packages("devtools")
## Instalando o pacote 'leem'
devtools::install_github("bendeivide/leem")
# Anexando o pacote leem
library(leem)
# Regiao (Estados a amazonia legal)
regiao <- c(rep("Norte", 7), "Centro-Oeste", "Nordeste")
# Grafico de pizza
regiao |>
  new_leem(variable = 1) |>
  tabfreq(namereduction = FALSE) |>
  piechart(main = "Estados da Amazônia Legal")



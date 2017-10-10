# essa parte do código só é importante para carregar
# as variáveis na memória
library(tidyverse)
dados <- ggplot2movies::movies %>%
  filter(!is.na(budget), budget > 0) %>%
  select(title, year, budget, rating) %>%
  arrange(desc(year))
modelo <- lm(rating ~ budget + year, data = dados)
#-------------------------------------------------------------------------------

#* @get /solta
solta_10 <- function() {
  dados %>%
    sample_n(10)
}

#* @post /prever
funcao_que_preve <- function(orcamento, ano) {
  d_test <- data.frame(budget = as.numeric(orcamento), year = as.numeric(ano))
  predict(modelo, newdata = d_test)
}

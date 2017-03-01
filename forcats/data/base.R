#INSIRA AQUI O CÓDIGO QUE LÊ A BASE DA ABJ
#bd_enasp_abj

set.seed(29012017)

f <- function(x){
  weights <- dirmult::rdirichlet(alpha = rep(sample(1:length(x))))
  x[sample(seq_along(x), length(x), replace=T, prob = weights)]
}

anonimize_senasp_base <- function(dataset, n, ...){
  dataset %>%
    select(...) %>%
    mutate_all(funs(f)) %>%
    head(n)
}

bd2 <- anonimize_senasp_base(bd_enasp_abj, 60,
                             instrumento.usado,
                             `sexo.vítima`,
                             `idade.vítima`) %>%
  mutate(`sexo.vítima` = stringr::str_match(`sexo.vítima`, "([MF]),?")[,2],
         `idade.vítima` = stringr::str_match(`idade.vítima`, "([0-9]{2}),?")[,2])

saveRDS(bd2, 'base_forcats.rds')

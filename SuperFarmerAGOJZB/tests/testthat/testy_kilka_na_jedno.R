test_that("Wymiana nie zostanie wykonana, gdy nie starcza zwierzat w stadzie",{
stan_stada_gracza <- c(40,24,8,0,0,0,1)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_false(kilka_na_jedno(stan_stada_gracza,"owca"))
})

test_that("Wynikiem funkcji kilka_na_jedno jest wektor o klasie numeric",{
tabela_co <- c(23,3,1,0,0,0,1)
names(tabela_co) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_is(kilka_na_jedno(tabela_co,"swinia"),"numeric")
})

test_that("Wynik funkcji kilka_na_jedno ma dlugosc 7",{
tabela_co <- c(23,3,1,0,0,0,1)
names(tabela_co) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_equal(length(kilka_na_jedno(tabela_co,"swinia")),7)
})

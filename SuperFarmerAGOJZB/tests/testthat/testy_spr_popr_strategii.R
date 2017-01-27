test_that("Funkcja spr_popr_strategii zwraca TRUE dla braku zmian w stadzie",{
stan_stada_gracza <- c(3,1,0,0,0,0,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
tymczasowy_stan_stada_gracza <- c(3,1,0,0,0,0,0)
names(tymczasowy_stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_true(spr_popr_strategii(stan_stada_gracza,tymczasowy_stan_stada_gracza))
})

test_that("Funkcja spr_popr_strategii zwraca FALSE dla wymiany 4 krow na 2 konie",{
stan_stada_gracza <- c(3,1,0,4,0,0,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
tymczasowy_stan_stada_gracza <- c(3,1,0,0,2,0,0)
names(tymczasowy_stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_false(spr_popr_strategii(stan_stada_gracza,tymczasowy_stan_stada_gracza))
})

test_that("Funkcja spr_popr_strategii nie pozwala na wymiane krolika na konia",{
stan_stada_gracza <- c(1,1,0,1,0,0,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
tymczasowy_stan_stada_gracza <- c(0,1,0,1,1,0,0)
names(tymczasowy_stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_false(spr_popr_strategii(stan_stada_gracza,tymczasowy_stan_stada_gracza))
})

test_that("Funkcja spr_popr_strategii nie pozwala na wymiane dwoch owiec na kroliki i malego psa",{
stan_stada_gracza <- c(1,2,0,1,0,0,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
tymczasowy_stan_stada_gracza <- c(7,0,0,1,0,1,0)
names(tymczasowy_stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_false(spr_popr_strategii(stan_stada_gracza,tymczasowy_stan_stada_gracza))
})

test_that("Funkcja spr_popr_strategii nie pozwala na wymiane 2 owiec na 12 krolikow",{
stan_stada_gracza <- c(3,2,0,1,0,0,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
tymczasowy_stan_stada_gracza <- c(15,0,0,1,0,0,0)
names(tymczasowy_stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_false(spr_popr_strategii(stan_stada_gracza,tymczasowy_stan_stada_gracza))
})

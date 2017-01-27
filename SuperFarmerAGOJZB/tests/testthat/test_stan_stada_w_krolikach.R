test_that("Rezultatem funkcji stan_stada_w_krolikach jest liczba",{expect_is(stan_stada_w_krolikach(c(1,1,1,0,0,0,0)),"numeric")})

test_that("Dwa konie maja wartosc 144 krolikow",{
stado_gracza <- c(0,0,0,0,2,0,0)
names(stado_gracza) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')
wynik <- stan_stada_w_krolikach(stado_gracza)
expect_equal(wynik[['krolik']],144)
})

test_that("Duzy pies i krowa maja wartosc konia",{
stado_gracza <- c(0,0,0,1,0,0,1)
names(stado_gracza) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')
wynik <- stan_stada_w_krolikach(stado_gracza)
expect_equal(wynik[['krolik']],SuperFarmerAGOJZB::param$wartosc_zwierzat[['kon']])
})

test_that("Funkcja rzuc_i_zareaguj zwraca wektor o charakterze numeric",{
stan_stada_gracza <- c(4,1,0,0,0,1,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_is(rzuc_i_zareaguj(stan_stada_gracza),"numeric")
})

test_that("Rezultat funkcji rzuc_i_zareaguj ma dlugosc 7",{
stan_stada_gracza <- c(4,1,0,0,0,1,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_equal(length(rzuc_i_zareaguj(stan_stada_gracza)),7)
})

test_that("Ilosc koni w stadzie po funckji rzuc_i_zareaguj nie ulega zmianie",{
stan_stada_gracza <- c(13,2,0,0,1,0,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
wynik <- rzuc_i_zareaguj(stan_stada_gracza)
expect_equal(wynik[['kon']],stan_stada_gracza[['kon']])
})

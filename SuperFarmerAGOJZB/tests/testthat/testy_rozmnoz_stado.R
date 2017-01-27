test_that("Stado gracza nie zostanie rozmnozone o wiecej zwierzat niz w stadzie glownym",{
stan_stada_gracza <- c(59,5,2,0,0,1,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
wynik <- rozmnoz_stado("krolik",2,stan_stada_gracza)
expect_equal(wynik[['krolik']],SuperFarmerAGOJZB::param$stado[['krolik']])
})

test_that("Dla braku danych zwierzat przy identycznym wyniku na obu kostkach gracz otrzymuje 1 zwierze",{
stan_stada_gracza <- c(0,0,0,0,0,0,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
wynik <- rozmnoz_stado("krolik",2,stan_stada_gracza)
expect_equal(wynik[['krolik']],1)
})


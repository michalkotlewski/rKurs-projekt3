test_that("Stategia oszukancza dodaje po jednym zwierzeciu kazdego rodzaju", {
stan_stada_gracza <- c(9,0,0,0,0,0,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
wynik <- c(10,1,1,1,1,1,1)
names(wynik) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_equal(strategia_oszukancza(stan_stada_gracza), wynik)
})

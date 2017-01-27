test_that("Poprawny wynik po ataku lisa", {
stan_stada_gracza <- c(9,0,0,2,0,0,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
wynik <- c(0,0,0,2,0,0,0)
names(wynik) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_equal(atak_drapieznika("lis",stan_stada_gracza), wynik)
})

test_that("Poprawny wynik po ataku wilka",{
stan_stada_gracza <- c(12,3,1,0,0,0,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
wynik <- c(0,0,0,0,0,0,0)
names(wynik) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_equal(atak_drapieznika("wilk",stan_stada_gracza), wynik)
})

test_that("Wilk nie zjada koni", {
stan_stada_gracza <- c(12,3,1,0,1,0,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
wynik <- c(0,0,0,0,1,0,0)
names(wynik) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_equal(atak_drapieznika("wilk",stan_stada_gracza), wynik)
})

test_that("Maly pies chroni kroliki", {
stan_stada_gracza <- c(11,0,0,0,1,1,0)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
wynik <- c(11,0,0,0,1,0,0)
names(wynik) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_equal(atak_drapieznika("lis",stan_stada_gracza), wynik)
})

test_that("Duzy pies chroni przed wilkiem", {
stan_stada_gracza <- c(11,1,0,1,0,1,1)
names(stan_stada_gracza) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
wynik <- c(11,1,0,1,0,1,0)
names(wynik) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
expect_equal(atak_drapieznika("wilk",stan_stada_gracza), wynik)
})

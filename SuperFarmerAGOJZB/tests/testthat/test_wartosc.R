test_that("Wartosc krolika", {
wynik <- 1
names(wynik) <- "krolik"
expect_equal(wartosc("krolik"), wynik)
})

test_that("Wartosc krowy", {
wynik <- 36
names(wynik) <- "krowa"
expect_equal(wartosc("krowa"), wynik)
})

test_that("Funkcja wartosc zwraca obiekt o klasie numeric",{expect_is(wartosc("owca"),"numeric")})

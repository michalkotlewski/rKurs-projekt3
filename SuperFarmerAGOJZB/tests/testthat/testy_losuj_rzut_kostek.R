test_that("Wynik funkcji losuj_rzut_kostek ma klase character",{expect_is(losuj_rzut_kostek(),"character")})

test_that("Wektor zwracany przez losuj_rzut_kostek ma dlugosc 2",{expect_equal(length(losuj_rzut_kostek()),2)})

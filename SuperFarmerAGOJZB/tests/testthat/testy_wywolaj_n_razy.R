test_that("Funckja wywolaj_n_razy zwraca obiekt o klasie numeric",{expect_is(wywolaj_n_razy(20),"numeric")})

test_that("Funckja wywolaj_n_razy dla n=20 zwraca wektor o dlugosci 20",{expect_equal(length(wywolaj_n_razy(20)),20)})

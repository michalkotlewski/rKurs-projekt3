test_that("Rezultatem funkcji gry jest liczba",{expect_is(gra(),"numeric")})

test_that("Rezultatem funkcji gry dla strategii kroliczej jest liczba",{expect_is(gra(strategia=SuperFarmerAGOJZB::strategia_AGOJZB_kroliki),"numeric")})

test_that("Funkcja nie zadziala na niezgodnej z regulami strategii",{expect_error(gra(strategia=SuperFarmerAGOJZB::strategia_oszukancza))})

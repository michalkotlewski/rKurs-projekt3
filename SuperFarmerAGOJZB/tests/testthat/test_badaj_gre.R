test_that("Niepoprawny argument funckji badaj_gre", {expect_error(badaj_gre(ilosc_wywolan = 10, co_chcesz = "cokolwiek"),"Nie obslugujemy Twojego zapytania!")})

test_that("Wynikiem funkcji badaj_gre dla domyslnych argumentow jest tabela", {expect_is(badaj_gre(ilosc_wywolan = 10),"table")})

test_that("Funkcja badaj_gre wyrzuci blad dla oszukanczej strategii", {expect_error(badaj_gre(ilosc_wywolan = 10,strategia = SuperFarmerAGOJZB::strategia_oszukancza))})

test_that("Wynikiem funkcji badaj_gre dla argumentu histogram jest wykres", {expect_is(badaj_gre(ilosc_wywolan = 10,co_chcesz = "histogram", sprawdzanie=TRUE),"ggplot")})

test_that("Wynikiem funkcji badaj_gre dla argumentu wykres_gestosci jest wykres", {expect_is(badaj_gre(ilosc_wywolan = 10,co_chcesz = "wykres_gestosci"),"ggplot")})

test_that("Wynikiem funkcji badaj_gre dla argumentu wykres_skrzypcowy jest wykres", {expect_is(badaj_gre(ilosc_wywolan = 10,co_chcesz = "wykres_skrzypcowy"),"ggplot")})

test_that("Wynikiem funkcji badaj_gre dla dwoch strategii jest lista", {expect_is(badaj_gre(strategia2 = SuperFarmerAGOJZB::strategia_AGOJZB,ilosc_wywolan = 10),"list")})

test_that("Wynikiem funkcji badaj_gre dla dwoch strategii i argumentu wykres_gestosci jest wykres", {expect_is(badaj_gre(strategia2 = SuperFarmerAGOJZB::strategia_AGOJZB,ilosc_wywolan = 10,co_chcesz = "wykres_gestosci"),"ggplot")})

test_that("Wynikiem funkcji badaj_gre dla dwoch strategii i argumentu wykres_skrzypcowy jest wykres", {expect_is(badaj_gre(strategia2 = SuperFarmerAGOJZB::strategia_AGOJZB,ilosc_wywolan = 10,co_chcesz = "wykres_skrzypcowy"),"ggplot")})

test_that("Wynikiem funkcji badaj_gre dla dwoch strategii i argumentu histogram jest obiekt gtable", {expect_is(badaj_gre(ilosc_wywolan = 10,co_chcesz = "histogram", sprawdzanie=TRUE),"ggplot")})

test_that("Niepoprawny argument funckji badaj_gre dla dwoch strategii", {expect_error(badaj_gre(strategia1 = SuperFarmerAGOJZB::strategia_AGOJZB,strategia2 = SuperFarmerAGOJZB::strategia_AGOJZB,ilosc_wywolan = 10, co_chcesz = "cokolwiek"),"Nie obslugujemy Twojego zapytania!")})

test_that("Porownanie strategii ze strategia oszukancza jest mozliwe dla argumentu sprawdzanie = FALSE", {expect_is(badaj_gre(strategia2 = SuperFarmerAGOJZB::strategia_oszukancza,ilosc_wywolan = 10,sprawdzanie = FALSE),"list")})

test_that("Dla domyslnej wartosci argumentu sprawdzenie nie mozna wywolac funkcji z niepoprawna strategia", {expect_error(badaj_gre(strategia2 = SuperFarmerAGOJZB::strategia_oszukancza,ilosc_wywolan = 10))})

test_that("Wynikiem funkcji badaj_gre dla dwoch strategii jest lista", {expect_is(badaj_gre(strategia1 = SuperFarmerAGOJZB::strategia_AGOJZB_kroliki, strategia2 = SuperFarmerAGOJZB::strategia_AGOJZB,ilosc_wywolan = 10),"list")})

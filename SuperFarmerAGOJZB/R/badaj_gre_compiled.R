#' @title Funkcja badajaca strategie i umozliwiajaca porownanie.
#'
#' @description Funcja \code{badaj_gre_compiled} jest skompilowaną za pomocą pakietu \code{compiler} funkcją \code{badaj_gre_compiled} wywoluje gre 10000 razy na wybranej strategii.
#'
#' @param ilosc_wywolan Jest argumentem okreslajacym dla ilu wywolan gry chcemy otrzymac
#' wynik funkcji. Domyslna wartosc to 10000.
#' @param strategia1 Argument okreslajacy pierwsza ze strategii do porównania,
#' ktorego domyslna wartosc to strategia zawarta w pakiecie.
#' @param strategia2 Argument okreslajacy druga ze strategii do porownania,
#' domyslna wartosc przypisana to NULL.
#' @param co_chcesz Parametry okreslajacy rodzaj wizualizacji, który chcemy uzyskać.
#' Domyslna wartosc parametru to "statystyki", można użyć również parametru "histogram".
#' @param param Parametry okreslaja niezbedne wartosci zdefiniowane do gry.
#' @param sprawdzanie Argument decydujacy, czy sprawdzenie poprawnosci strategi ma byc wykonane.
#' Domyslnie jest wykonwane.
#'
#' @return Funkcja \code{badaj_gre} zwraca podstawowe statystyki
#' lub wykres(w zaleznosci od podanych parametrow).
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#'
#' @export

badaj_gre_compiled <- compiler::cmpfun(badaj_gre)

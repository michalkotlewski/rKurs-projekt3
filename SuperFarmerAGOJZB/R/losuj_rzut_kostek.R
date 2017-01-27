#' @title Rzut kostkami
#'
#' @description
#' Funkcja \code{losuj_rzut_kostek} losuje i zwraca wynik rzutu z dwoch wskazanych kostek,
#' domyslnie sa to kostki zielona i czerwona, odpowiadajace kostkom z klasycznego
#' zestawu do gry.
#'
#' @param z Pierwsza kostka, z ktorej losujemy wartosc. Domyslnie to kostka zielona
#' odpowiadajaca kostce z zestawu do gry.
#' @param c Druga kostka, z ktorej losujemy wartosc. Domyslnie to kostka czerwona
#' odpowiadajaca tej z zestwau do gry.
#'
#' @return Funkcja \code{losuj_rzut_kostek} zwraca jako wynik wektor dwuelementowy z
#' wynikiem rzutu z obu kostek.
#'
#' @author
#' Joanna Zbijewska, \email{asia.zbijewska@gmail.com}
#'
#' @rdname losuj_rzut_kostek

losuj_rzut_kostek <- function(z=SuperFarmerAGOJZB::param$kostka_zielona,c=SuperFarmerAGOJZB::param$kostka_czerwona){
  wynik <- c(sample(z, 1), sample(c, 1))
  return(wynik)
}

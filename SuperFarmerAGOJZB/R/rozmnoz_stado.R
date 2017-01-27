#' @title Powiekszenie ilosci zwierzat w stadzie gracza o wynik rzutu.
#'
#' @description Funkcja \code{rozmnoz_stado} przyjmujac jako argumenty wynik rzutu kostek,
#' ilosc kostek, na jakiej wypadl i przyjety stan stada powieksza ilosc odpowiednich zwierzat
#' w stadzie gracza o najwieksza mozliwa wartosc dla zadanej ilosci poszczegolnych zwierzat w grze.
#'
#' @param wynik Jest wynikiem wylosowanym w rzucie kostkami.
#' @param ilosc_kostek Ilosc kostek na ktorej wypadl dany wynik.
#' @param stado Zadane stado, czyli maksymalna ilosc zwierzat danego rodzaju w grze. Domyslnie
#' stan stada opisany w oryginalnej grze.
#' @param stan_stada_gracza Aktualny stan liczbowy zwierzat w stadzie gracza.
#'
#' @return Funkcja \code{rozmnoz_stado} zwraca zmieniony - powiekszony o wynik rzutu
#' stan stada gracza.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#' @author
#' Joanna Zbijewska, \email{asia.zbijewska@gmail.com}
#'
#' @rdname rozmnoz_stado

rozmnoz_stado <- function(wynik,ilosc_kostek,stan_stada_gracza,stado=SuperFarmerAGOJZB::param$stado){
  stan_stada_gracza[wynik] <- stan_stada_gracza[wynik] + floor((ilosc_kostek+stan_stada_gracza[wynik])/2)
  stan_stada_gracza <- pmin(stan_stada_gracza, stado)
  return(stan_stada_gracza)
}

#' @title Wywolanie i reakcja na wynik rzutu kostek.
#'
#' @description Funkcja \code{rzuc_i_zareaguj} wywoluje rzut kostek i reaguje na jego
#' wynik, jako argumenty przyjmuje stan stada gracza oraz maksymalny stan stada.
#'
#' @param stan_stada_gracza Aktualny stan zwierzat w stadzie gracza.
#' @param stado Mozliwa ilosc zwierzat w stadzie glownym. Domyslnie przypisana wartosc
#' jak z oryginalnej gry planszowej.
#'
#' @return Funkcja \code{rzuc_i_zareaguj} zwraca uaktualniony i zmieniony o odpowiednia
#' wartosc stan zwierzat w sadzie gracza.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#' @author
#' Joanna Zbijewska, \email{asia.zbijewska@gmail.com}
#'
#' @rdname rzuc_i_zareaguj

rzuc_i_zareaguj <- function(stan_stada_gracza, stado = SuperFarmerAGOJZB::param$stado){
  wynik <- losuj_rzut_kostek()
  if(wynik[1] == wynik[2]){
    stan_stada_gracza <- rozmnoz_stado(wynik[1],2,stan_stada_gracza)
    return(stan_stada_gracza)
  }
  czy_wilk <- 'wilk' %in% wynik
  czy_lis <- 'lis' %in% wynik
  ifelse(czy_wilk,
         stan_stada_gracza <- atak_drapieznika("wilk",stan_stada_gracza),
         stan_stada_gracza <- rozmnoz_stado(wynik[1],1,stan_stada_gracza))
  ifelse(czy_lis,
         stan_stada_gracza <- atak_drapieznika("lis",stan_stada_gracza),
         stan_stada_gracza <- rozmnoz_stado(wynik[2],1,stan_stada_gracza))
  return(stan_stada_gracza)
}

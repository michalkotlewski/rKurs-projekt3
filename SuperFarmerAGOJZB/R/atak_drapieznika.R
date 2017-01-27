#' @title Zmniejszenie ilosci zwierzat w stadzie gracza w wyniku ataku wilka lub lisa.
#'
#' @description Funckja \code{atak_drapieznika} przyjmujac jako argumenty nazwe drapieznika oraz
#' aktualny stan stada gracza, zmniejsza ilość odpowiednich zwierząt w stadzie gracza.
#'
#' @param drapieznik Jest wylosowanym z kostek drapieznikiem.
#' @param stan_stada_gracza  Aktualny stan liczbowy zwierzat w stadzie gracza.
#' @param wilk_co Argument jakie zwierzeta zjada wilk w postaci wektora z nazwami, domyslnie
#' zwierzeta z wersji podstawowej gry.
#' @param wilk_ile Dane o tym, ile zwierzat wilk, domyslnie dodane wartości z podstawowej
#' wersji gry Super Farmer.
#' @param lis_co Argument w postaci wektora jakie zwierzeta zjada lis, domyslnie jedynie kroliki.
#' @param lis_ile Dane o tym, ile krolikow zjada lis, domyslnie dodane wartości z podstawowej
#' wersji gry Super Farmer.
#'
#' @return Funkcja \code{atak_drapieznika} wraca zmieniony stan stada gracza.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#' @author
#' Joanna Zbijewska, \email{asia.zbijewska@gmail.com}
#' @author
#' Hanna Kranas, \email{unchallenged.yo@gmail.com}
#'
#' @rdname atak_drapieznika

atak_drapieznika <- function(drapieznik,stan_stada_gracza,wilk_co=SuperFarmerAGOJZB::param$wilk_co,wilk_ile=SuperFarmerAGOJZB::param$wilk_ile,lis_co=SuperFarmerAGOJZB::param$lis_co,lis_ile=SuperFarmerAGOJZB::param$lis_ile){
  if (drapieznik == "wilk"){
    if (stan_stada_gracza['duzy_pies']>0){
      stan_stada_gracza <- stan_stada_gracza - c(0,0,0,0,0,0,1)
    } else {
      stan_stada_gracza[wilk_co] <- wilk_ile
    }
  }
  if (drapieznik == "lis"){
    if (stan_stada_gracza['maly_pies']>0){
      stan_stada_gracza <- stan_stada_gracza - c(0,0,0,0,0,1,0)
    } else {
      stan_stada_gracza[lis_co] <- lis_ile
    }
  }
  return(stan_stada_gracza)
}

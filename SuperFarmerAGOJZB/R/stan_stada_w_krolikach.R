#' @title Przeliczenie wartosci wszystkich zwierzat w stadzie gracza na kroliki.
#'
#' @description Funckja \code{stan_stada_w_krolikach} przelicza wartosci wszystkich
#' obecnych aktualnie w stadzie gracza zwierzat na kroliki.
#'
#' @param stan_stada_gracza Aktualny stan liczbowy zwierzat w stadzie gracza.
#'
#' @return Zwraca saldo, czyli ilosc krolikow, na ktore moznaby zamienic wszystkie
#' obecne w stadzie zwierzeta.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#'
#' @rdname stan_stada_w_krolikach

stan_stada_w_krolikach <- function(stan_stada_gracza){
  saldo <- 0
  for(i in 1:length(stan_stada_gracza)){
    saldo <- saldo + stan_stada_gracza[[i]]*SuperFarmerAGOJZB::wartosc_zwierzat[names(stan_stada_gracza)[[i]]]
  }
  return(saldo)
}

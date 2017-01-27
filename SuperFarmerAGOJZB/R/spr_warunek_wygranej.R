#' @title Sprawdzenie, czy stado gracza spełnia warunki wygranej
#'
#' @description  Funckja \code{spr_warunek_wygranej} porównuje stan stada gracza z warunkiem wygranej
#' i zwraca odpowiednią wartość logiczną.
#'
#' @param stan_stada_gracza Aktualny stan liczbowy zwierzat w stadzie gracza.
#' @param warunek_wygranej Wektor zaiwrający minimalną ilość zwierząt każdego rodzaju, potrzebną do wygranej.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#' @author
#' Joanna Zbijewska, \email{asia.zbijewska@gmail.com}
#'
#' @rdname spr_warunek_wygranej

spr_warunek_wygranej <- function(stan_stada_gracza, warunek_wygranej=SuperFarmerAGOJZB::param$warunek_wygranej){
  ifelse(all(stan_stada_gracza >= warunek_wygranej), return(TRUE), return(FALSE))
}

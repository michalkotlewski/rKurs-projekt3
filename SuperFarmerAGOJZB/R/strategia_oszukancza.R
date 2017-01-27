#' @title Strategia niezgodna z zasadami gry SuperFarmer.
#'
#' @description  Funkcja \code{strategia_oszukancza} implementuje strategie gry \strong{niezgodna
#' z zasadami gry} SuperFarmer. Powieksza ona stan stada gracza o jedno zwierze kazdego rodzaju.
#'
#' @param stan_stada_gracza Aktualny stan stada gracza.
#'
#' @return Funkcja \code{strategia_oszukancza} zwraca zmieniony o wymienione zwierzeta
#' stan stada gracza.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#' @author
#' Joanna Zbijewska, \email{asia.zbijewska@gmail.com}
#'
#' @export

strategia_oszukancza <- function(stan_stada_gracza){
  stan_stada_gracza <- stan_stada_gracza + c(1,1,1,1,1,1,1)
  return(stan_stada_gracza)
}

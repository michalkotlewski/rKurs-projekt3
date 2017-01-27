#' @title Sprawdzenie poprawnosci wymiany
#'
#' @description Funkcja sprawdza, czy wymiana dokonana przez strategię była zgodna z zasadami gry.
#'
#' @param stan_stada_gracza Aktualny stan zwierzat w stadzie gracza.
#'
#' @param tymczasowy_stan_stada_gracza Stan stada po dokonaniu wymiany przez strategię.
#'
#' @return Wartosc logiczna oznaczajaca czy wymiana byla legalna.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#' @author
#' Joanna Zbijewska, \email{asia.zbijewska@gmail.com}
#'
#' @export

spr_popr_strategii <- function(stan_stada_gracza,tymczasowy_stan_stada_gracza){
  roznica <- tymczasowy_stan_stada_gracza - stan_stada_gracza
  if(all(roznica == 0)) return(TRUE)
  if(stan_stada_w_krolikach(roznica) > 0) return(FALSE)
  tabela_znakow <- table(sign(roznica))
  if(tabela_znakow["1"] != 1 & tabela_znakow["-1"] != 1) return(FALSE)
  if(tabela_znakow["1"] == 1 && roznica[which(roznica > 0)] != 1 && tabela_znakow["-1"] != 1) return(FALSE)
  if(tabela_znakow["-1"] == 1 && roznica[which(roznica < 0)] != (-1) && tabela_znakow["1"] != 1) return(FALSE)
  if(tabela_znakow["1"] == 1 && roznica[which(roznica > 0)] != 1 && tabela_znakow["-1"] == 1 && roznica[which(roznica < 0)] != (-1)) return(FALSE)
  return(TRUE)
}

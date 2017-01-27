#' @title Przeprowadzenie gry w Super Farmera.
#'
#' @description Funkcja \code{gra} przeprowadza gre dla zadanych argumentow - strategii,
#' jako domyslna przypisana jest strategia z pakietu, a takze parametrow gry, domyslnie
#' dla parametrow opisanych w oryginalnej grze Super Farmer, wyliczana jest takze liczba
#' ruchow jakiej gracz potrzebowal do wygranej.
#'
#' @param strategia Argument okreslajacy wykorzystywna do gry strategie, ktorego domyslna
#' wartosc to strategia zawarta w pakiecie.
#' @param param Parametry okreslaja niezbedne wartosci zdefiniowane do gry.
#' @param sprawdzanie Argument decydujacy, czy sprawdzenie poprawnosci strategi ma byc wykonane.
#' Domyslnie jest wykonwane.
#'
#' @return Zwraca ilosc ruchow, jakie gracz musial wykonac przed zakonczeniem gry
#' w Super Farmera.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#' @author
#' Joanna Zbijewska, \email{asia.zbijewska@gmail.com}
#'
#' @export

gra <- function(strategia=SuperFarmerAGOJZB::strategia_AGOJZB, param = SuperFarmerAGOJZB::param, sprawdzanie = TRUE){
  stan_stada_gracza <- param$stado_gracza
  licznik <- 0
  while (spr_warunek_wygranej(stan_stada_gracza, param$warunek_wygranej)==FALSE){
    stan_stada_gracza_tmp <- strategia(stan_stada_gracza)
    ifelse (sprawdzanie == TRUE & spr_popr_strategii(stan_stada_gracza, stan_stada_gracza_tmp) == FALSE,
            stop(cat(cat("Oszukancza strategia!",collapse='\n'),cat(stan_stada_gracza,collapse='\n'),cat(stan_stada_gracza_tmp,collapse='\n'),sep='\n')),
            stan_stada_gracza <- stan_stada_gracza_tmp)
    stan_stada_gracza <- rzuc_i_zareaguj(stan_stada_gracza,param$stado)
    #print(stan_stada_gracza)
    licznik <- licznik +1
  }
  return(licznik)
}

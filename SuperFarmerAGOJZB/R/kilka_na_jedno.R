#' @title Wymiana kilku mniejszych zwierzat na jedno wieksze.
#'
#' @description Funkcja \code{kilka_na_jedno} sluzy do wymiany mozliwych zwierzat ze stada gracza
#' na wieksze zwierzeta.
#'
#' @param tabela_co Wektor zawierajacy zwirzeta, ktore jestesmy w stanie oddac.
#' @param na_co Zwierze, ktore chcemy dostac.
#' @param stado Zadana maksymalna ilosc zwierzat kazdego rodzaju.
#' @param param Przekazane parametry gry.
#'
#' @return Zwraca zmieniony stan stada gracza.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#'
#' @rdname kilka_na_jedno

kilka_na_jedno <- function(tabela_co,na_co,stado = SuperFarmerAGOJZB::param$stado, param = SuperFarmerAGOJZB::param ){
  tabela_zmian <- c(0,0,0,0,0,0,0)
  names(tabela_zmian) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
  cena <- param$wartosc_zwierzat[na_co]
  kolejnosc <- c("krowa","swinia","owca","krolik","maly_pies","duzy_pies")
  aktualny_stan_stada <- stado-tabela_co
  if (aktualny_stan_stada[na_co] <= 0) return(FALSE)
  for (i in kolejnosc){
    if(tabela_co[[i]]>0 && param$wartosc_zwierzat[i]<=cena && cena >0){
      tabela_zmian[[i]] <- -min(floor(cena/param$wartosc_zwierzat[i]), tabela_co[[i]])
      cena <- cena + tabela_zmian[[i]]*param$wartosc_zwierzat[i]
    }
  }
  tabela_zmian[[na_co]] <- 1
  ifelse(cena>0, return(FALSE), return(tabela_zmian))
}

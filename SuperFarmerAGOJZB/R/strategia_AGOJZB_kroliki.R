#' @title Strategia gry w Super Farmera dla pojedynczego gracza, ktory chce posiadac jak najwiecej krolikow.
#'
#' @description Funkcja \code{strategia_AGOJZB_kroliki} jest strategia gry w gre Super Farmer,
#' w ktorej gracz chce posiadac zawsze w stadzie co najmniej 2 male psy i jak najwiecej krolikow,
#' strategia zaklada wykonanie wymian koniecznych do jak najszybszej wygranej.
#'
#' @param stan_stada_gracza Aktualna ilość zwirząt każdego typu w stadzie gracza.
#' @param kroliki Minimalna ilosc krolikow, ktora bedzie chcial zachowac gracz. Domyslnie 9.
#' @param owce Minimalna ilosc owiec, ktora bedzie chcial zachowac gracz. Domyslnie 0.
#' @param duze_psy Minimalna ilosc duzych_psow, ktora bedzie chcial posiadac gracz. Domyslnie 0.
#' @param male_psy Minimalna ilosc malych psow, ktora bedzie chcial posiadac gracz. Domyslnie 2.
#' @param param Parametry okreslaja niezbedne wartosci zdefiniowane do gry.
#'
#' @return Funkcja \code{strategia_AGOJZB_kroliki} zwraca zmieniony o wymienione zwierzeta
#' stan stada gracza.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#' @author
#' Joanna Zbijewska, \email{asia.zbijewska@gmail.com}
#'
#' @export

strategia_AGOJZB_kroliki <- function(stan_stada_gracza,kroliki=9, owce=0, duze_psy=0, male_psy=2, param = SuperFarmerAGOJZB::param){
  wymiana <- c(0,0,0,0,0,0,0)
  names(wymiana) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
  if (stan_stada_gracza[["kon"]] >= 2){
    wymiana[1:7]<-c(6,1,2,1,-1,0,0)
    return(stan_stada_gracza+wymiana)
  }
  if((stan_stada_w_krolikach(stan_stada_gracza[c(1,2,3,4,6,7)])>=72)&&(stan_stada_gracza[["kon"]]==1)){
    wymiana <- kilka_na_jedno(stan_stada_gracza,"kon",param$stado, param)
    return(stan_stada_gracza+wymiana)
  }
  damy<-c( max(stan_stada_gracza[["krolik"]]-(kroliki + male_psy * 10),0),max(stan_stada_gracza[["owca"]]-owce,0),stan_stada_gracza["swinia"],stan_stada_gracza["krowa"],0,max(stan_stada_gracza[["maly_pies"]]-male_psy,0),max(stan_stada_gracza[["duzy_pies"]]-duze_psy))
  names(damy) <-  c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
  for(zw in c("kon","owca","maly_pies","duzy_pies")){
    wymiana <- kilka_na_jedno(damy,zw)
    parametr = switch(zw,"kon" = 2,
                      "maly_pies" = male_psy,
                      "duzy_pies" = duze_psy,
                      "owca" = owce)
    if(class(wymiana)=="numeric" && stan_stada_gracza[[zw]]< parametr)  return(stan_stada_gracza+wymiana)
  }
  wymiana[1:7]<-c(0,0,0,0,0,0,0)
  return(stan_stada_gracza+wymiana)
}

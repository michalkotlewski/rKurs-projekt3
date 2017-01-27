#' @title Funkcja tworzaca wykres skrzypcowy.
#'
#' @description Funcja \code{rysuj_skrzypcowy} tworzy wykres skrzypcowy na podstawie zadanych danych i innych parametrów.
#'
#' @param dane Data Frame, z których stworzony zostanie wykres.
#'
#' @return Funkcja \code{badaj_gre} zwraca wykres skrzypcowy z pakietu ggplot2.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#'
#' @rdname rysuj_skrzypcowy
#'
rysuj_skrzypcowy <- function(dane){
  dane<-reshape2::melt(dane,id.vars=NULL)
  variable<-colnames(dane)[1]
  value<-colnames(dane)[2]
  p<-ggplot2::ggplot(dane, ggplot2::aes(x=variable, y=value, fill=factor(variable)))+
    ggplot2::geom_violin()+
    ggplot2::stat_boxplot(alpha=0)+
    ggplot2::theme_bw()+
    ggplot2::xlab("")+
    ggplot2::ylab("Liczba gier")+
    ggplot2::labs(title="Wykres skrzypcowy czasu gry")+
    ggplot2::theme(legend.position = "none",
                   axis.title.y=ggplot2::element_text(angle=0))
  return(p)
}

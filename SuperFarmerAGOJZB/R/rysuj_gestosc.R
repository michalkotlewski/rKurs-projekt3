#' @title Funkcja tworzaca wykresy gestosci.
#'
#' @description Funcja \code{rysuj_gestosc} tworzy wykres gestosci na podstawie zadanych danych i innych parametrów.
#'
#' @param dane Data Frame, z których stworzony zostanie wykres.
#'
#' @return Funkcja \code{badaj_gre} zwraca wykres gestosci z pakietu ggplot2.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#'
#' @rdname rysuj_gestosc
#' 
#' @export

rysuj_gestosc <- function(dane){
  dane<-reshape2::melt(dane,id.vars=NULL)
  variable<-colnames(dane)[1]
  value<-colnames(dane)[2]
  p<-ggplot2::ggplot(dane, ggplot2::aes(x=value, fill=variable)) + ggplot2::geom_density(alpha=.2)+
    ggplot2::theme_bw()+
    ggplot2::xlab("Czas trwania gry")+
    ggplot2::ylab("Gestosc")+
    ggplot2::labs(title="Wykres gestosci czasu gry")+
    ggplot2::guides(fill=ggplot2::guide_legend(title=NULL),
                    axis.title.y=ggplot2::element_text(angle=0))

  return(p)
}

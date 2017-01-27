#' @title Funkcja tworzaca histogram.
#'
#' @description Funcja \code{rysuj_histogram} tworzy hstogram na podstawie zadanych danych i innych parametrow.
#'
#' @param dane Dane, z których stworzony zostanie histogram.
#' @param kolor Kolor wykresu.
#' @param x_max Maksymalna wartość na osi x .
#' @param y_max Maksymalna wartość na osi y.
#'
#'
#' @return Funkcja \code{badaj_gre} zwraca histogram w postaci wykresu z pakietu ggplot2.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#' @author
#' Joanna Zbijewska, \email{asia.zbijewska@gmail.com}
#'
#' @rdname rysuj_histogram
#'
#' @export

rysuj_histogram <- function(dane, kolor, x_max, y_max){
p <- ggplot2::ggplot(dane,ggplot2::aes(dane))+
  ggplot2::geom_histogram(binwidth = 1, col=paste("dark",kolor, sep =""), fill = kolor)+
  ggplot2::theme(axis.text = ggplot2::element_text(size = 14),
                 panel.grid.major = ggplot2::element_line(colour = "grey40"),
                 panel.grid.minor = ggplot2::element_blank(),
                 panel.background = ggplot2::element_rect(fill = "white"),
                 axis.title=ggplot2::element_text(size=14),
                 axis.title.y=ggplot2::element_text(angle=0),
                 plot.title=ggplot2::element_text(size=20))+
  ggplot2::xlab("Czas trwania gry")+
  ggplot2::ylab("Liczba gier")+
  ggplot2::labs(title="Rozklad czasu gry")+
  ggplot2::xlim(0, x_max)+
  ggplot2::ylim(0, y_max)
return(p)
}

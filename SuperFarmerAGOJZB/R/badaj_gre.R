#' @title Funkcja badajaca strategie i umozliwiajaca porownanie.
#'
#' @description Funcja \code{badaj_gre} wywoluje gre 10000 razy na wybranej strategii.
#'
#' @param ilosc_wywolan Jest argumentem okreslajacym dla ilu wywolan gry chcemy otrzymac
#' wynik funkcji. Domyslna wartosc to 10000.
#' @param strategia1 Argument okreslajacy pierwsza ze strategii do porównania,
#' ktorego domyslna wartosc to strategia zawarta w pakiecie.
#' @param strategia2 Argument okreslajacy druga ze strategii do porownania,
#' domyslna wartosc przypisana to NULL.
#' @param co_chcesz Parametry okreslajacy rodzaj wizualizacji, który chcemy uzyskać.
#' Domyslna wartosc parametru to "statystyki", można użyć również parametru "histogram".
#' @param param Parametry okreslaja niezbedne wartosci zdefiniowane do gry.
#' @param sprawdzanie Argument decydujacy, czy sprawdzenie poprawnosci strategi ma byc wykonane.
#' Domyslnie jest wykonwane.
#'
#' @return Funkcja \code{badaj_gre} zwraca podstawowe statystyki
#' lub wykres(w zaleznosci od podanych parametrow).
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#' @author
#' Joanna Zbijewska, \email{asia.zbijewska@gmail.com}
#'
#' @export


badaj_gre <- function(strategia1=SuperFarmerAGOJZB::strategia_AGOJZB,strategia2=NULL,co_chcesz="statystyki", ilosc_wywolan = 10000, param=SuperFarmerAGOJZB::param, sprawdzanie = TRUE){
  if(is.null(strategia2)){
  wyniki <- as.data.frame(SuperFarmerAGOJZB::wywolaj_n_razy(ilosc_wywolan,strategia1,param,sprawdzanie))
  if(co_chcesz=="statystyki") return(summary(wyniki))
  if(co_chcesz=="histogram"){
    p <- rysuj_histogram(dane = wyniki, kolor="green", x_max=max(wyniki)+10, y_max=max(table(wyniki))+2)
    return(p)}
  if(co_chcesz=="wykres_gestosci"){
    colnames(wyniki) <- c("strategia")
    p <- rysuj_gestosc(wyniki)
    return(p)
  }
  if(co_chcesz=="wykres_skrzypcowy"){
    colnames(wyniki)<-"strategia"
    p <- rysuj_skrzypcowy(wyniki)
    return(p)
  }
   stop("Nie obslugujemy Twojego zapytania!")
  } else {
    wyniki1 <- SuperFarmerAGOJZB::wywolaj_n_razy(ilosc_wywolan,strategia1,param,sprawdzanie)
    wyniki2 <- SuperFarmerAGOJZB::wywolaj_n_razy(ilosc_wywolan,strategia2,param,sprawdzanie)
    if(co_chcesz=="statystyki"){
      s <- list(summary(wyniki1),summary(wyniki2))
      return(s)}
    if(co_chcesz=="histogram"){
      wyniki1 <- as.data.frame(wyniki1)
      wyniki2 <- as.data.frame(wyniki2)
      x_max <- max(wyniki1,wyniki2)+10
      y_max <- max(table(wyniki1),table(wyniki2))+5
      p1 <- rysuj_histogram(wyniki1, "green", x_max, y_max)
      p2 <- rysuj_histogram(wyniki2, "red", x_max, y_max)
      return(gridExtra::grid.arrange(p1,p2))}
    if(co_chcesz=="wykres_gestosci"){
      dane=data.frame(wyniki1, wyniki2)
      names(dane)=c("strategia1", "strategia2")
      p <- rysuj_gestosc(dane)
      return(p)
    }
    if(co_chcesz=="wykres_skrzypcowy"){
      dane=data.frame(wyniki1, wyniki2)
      names(dane)=c("strategia1", "strategia2")
      p <- rysuj_skrzypcowy(dane)
      return(p)
    }
  }
  stop("Nie obslugujemy Twojego zapytania!")
}

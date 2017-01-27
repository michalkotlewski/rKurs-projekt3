#' @title Wywolanie gry okreslona ilosc razy.
#'
#' @description Funkcja \code{wywolaj_n_razy} powtarza gre w Super Farmera zadana ilosc razy.
#'
#' @param n Ilosc razow, jaka chcemy powtorzyc gre.
#' @param strategia Argument okreslajacy wykorzystywna do gry strategie, ktorego domyslna
#' wartosc to strategia zawarta w pakiecie.
#' @param param Parametry okreslaja niezbedne wartosci zdefiniowane do gry.
#' @param sprawdzanie Argument decydujacy, czy sprawdzenie poprawnosci strategi ma byc wykonane.
#' Domyslnie jest wykonwane.
#'
#' @return Zwraca wektor o ilosci elementow identycznej do ilosci powtorzen gry, ktory
#' zawiera ilosc ruchow w jakiej dana gra sie skonczyla.
#'
#' @author
#' Alicja Gosiewska, \email{alicjagosiewska@gmail.com}
#' @author
#' Joanna Zbijewska, \email{asia.zbijewska@gmail.com}
#'
#' @export

wywolaj_n_razy <- function(n, strategia = SuperFarmerAGOJZB::strategia_AGOJZB, param = SuperFarmerAGOJZB::param, sprawdzanie = TRUE){
  wyniki <- c()
  replicate(n,
            {wyniki <- c(wyniki,SuperFarmerAGOJZB::gra(strategia,param,sprawdzanie))
            return(wyniki)})
}

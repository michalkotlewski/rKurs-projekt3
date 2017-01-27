#' Wartosc danego zwierzecia
#'
#' Funkcja wartosc() zwraca wartosc wskazanego zwiarzecia.
#'
#' @param zwierze Zwierze, dla ktorego ma byc zwrocona wartosc.
#'
#' @rdname wartosc

wartosc <- function(zwierze){
  hash <- c("krolik" = 1,
            "owca" = 6,
            "swinia" = 12,
            "krowa" =  36,
            "kon" = 72,
            "maly_pies" = 6,
            "duzy_pies" = 36)

  return(hash[zwierze])
}

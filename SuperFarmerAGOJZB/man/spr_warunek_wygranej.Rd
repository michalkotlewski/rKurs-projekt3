% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spr_warunek_wygranej.R
\name{spr_warunek_wygranej}
\alias{spr_warunek_wygranej}
\title{Sprawdzenie, czy stado gracza spełnia warunki wygranej}
\usage{
spr_warunek_wygranej(stan_stada_gracza,
  warunek_wygranej = SuperFarmerAGOJZB::param$warunek_wygranej)
}
\arguments{
\item{stan_stada_gracza}{Aktualny stan liczbowy zwierzat w stadzie gracza.}

\item{warunek_wygranej}{Wektor zaiwrający minimalną ilość zwierząt każdego rodzaju, potrzebną do wygranej.}
}
\description{
Funckja \code{spr_warunek_wygranej} porównuje stan stada gracza z warunkiem wygranej
i zwraca odpowiednią wartość logiczną.
}
\author{
Alicja Gosiewska, \email{alicjagosiewska@gmail.com}

Joanna Zbijewska, \email{asia.zbijewska@gmail.com}
}


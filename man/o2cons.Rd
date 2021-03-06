% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Data.R
\docType{data}
\name{o2cons}
\alias{o2cons}
\title{Oxygen Consumption of Leukocytes}
\format{A data frame with 144 rows and 5 variables:
\describe{
  \item{O2}{oxygen consumption of leukocytes in \eqn{\mu}l}
  \item{Staphylococci}{whether or not inactivated staphylococci were added, 1 denotes yes, 0 no}
  \item{Time}{the measurements were taken after 6, 12 and 18 minutes}
  \item{Group}{the treatment group, either P for Placebo or V for Verum}
  \item{Subject}{the subject id}
}}
\source{
Friedrich, S., Brunner, E. and Pauly, M. (2016). Permuting longitudinal data despite all the dependencies. arXiv preprint arXiv:1509.05570v2
}
\usage{
data(o2cons)
}
\description{
A dataset containing measurements on the oxygen consumption of leukocytes in the presence and absence of inactivated staphylococci.
}
\keyword{datasets}


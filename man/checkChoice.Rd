% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/checkChoice.r
\name{checkChoice}
\alias{assertChoice}
\alias{checkChoice}
\alias{testChoice}
\title{Check if an object is an element of a given set}
\usage{
checkChoice(x, choices)

assertChoice(x, choices, .var.name)

testChoice(x, choices)
}
\arguments{
\item{x}{[any]\cr
Object to check.}

\item{choices}{[\code{atomic}]\cr
Set of possible values.}

\item{.var.name}{[character(1)]\cr
Name for \code{x}. Defaults to a heuristic to determine
the name using \code{\link[base]{deparse}} and \code{\link[base]{substitute}}.}
}
\value{
Depending on the function prefix:
 If the check is successful, all functions return \code{TRUE}.
 If the check is not successful, \code{assertChoice} throws an error message,
 \code{testChoice} returns \code{FALSE} and \code{checkChoice} returns
 a string with the error message.
}
\description{
Check if an object is an element of a given set
}
\examples{
testChoice("x", letters)
}
\seealso{
Other set: \code{\link{assertSetEqual}},
  \code{\link{checkSetEqual}}, \code{\link{testSetEqual}};
  \code{\link{assertSubset}}, \code{\link{checkSubset}},
  \code{\link{testSubset}}
}


% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/checkScalar.r
\name{checkScalar}
\alias{assertScalar}
\alias{checkScalar}
\alias{testScalar}
\title{Check if an argument is a single atomic value}
\usage{
checkScalar(x, na.ok = FALSE)

assertScalar(x, na.ok = FALSE, .var.name)

testScalar(x, na.ok = FALSE)
}
\arguments{
\item{x}{[any]\cr
Object to check.}

\item{na.ok}{[\code{logical(1)}]\cr
Are missing values allowed? Default is \code{FALSE}.}

\item{.var.name}{[character(1)]\cr
Name for \code{x}. Defaults to a heuristic to determine
the name using \code{\link[base]{deparse}} and \code{\link[base]{substitute}}.}
}
\value{
Depending on the function prefix:
 If the check is successful, all functions return \code{TRUE}.
 If the check is not successful, \code{assertScalar} throws an error message,
 \code{testScalar} returns \code{FALSE} and \code{checkScalar} returns
 a string with the error message.
}
\description{
Check if an argument is a single atomic value
}
\details{
This function does not distinguish between
\code{NA}, \code{NA_integer_}, \code{NA_real_}, \code{NA_complex_}
\code{NA_character_} and \code{NaN}.
}
\examples{
testScalar(1)
testScalar(1:10)
}
\seealso{
Other scalars: \code{\link{assertCount}},
  \code{\link{checkCount}}, \code{\link{testCount}};
  \code{\link{assertFlag}}, \code{\link{checkFlag}},
  \code{\link{testFlag}}; \code{\link{assertInt}},
  \code{\link{checkInt}}, \code{\link{testInt}};
  \code{\link{assertNumber}}, \code{\link{checkNumber}},
  \code{\link{testNumber}}; \code{\link{assertPercentage}},
  \code{\link{checkPercentage}},
  \code{\link{testPercentage}};
  \code{\link{assertScalarNA}},
  \code{\link{checkScalarNA}}, \code{\link{testScalarNA}};
  \code{\link{assertString}}, \code{\link{checkString}},
  \code{\link{testString}}
}


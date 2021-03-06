% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/checkArray.r
\name{checkArray}
\alias{assertArray}
\alias{checkArray}
\alias{testArray}
\title{Check if an argument is an array}
\usage{
checkArray(x, mode = NULL, any.missing = TRUE, d = NULL)

assertArray(x, mode = NULL, any.missing = TRUE, d = NULL, .var.name)

testArray(x, mode = NULL, any.missing = TRUE, d = NULL)
}
\arguments{
\item{x}{[any]\cr
Object to check.}

\item{mode}{[\code{character(1)}]\cr
Storage mode of the matrix. Matricies can hold \dQuote{logical},
\dQuote{integer}, \dQuote{double}, \dQuote{numeric}, \dQuote{complex} and
\dQuote{character}. Default is \code{NULL} (no check).}

\item{any.missing}{[\code{logical(1)}]\cr
Are missing values allowed? Default is \code{TRUE}.}

\item{d}{[\code{integer(1)}]\cr
Dimensionality of array.
Default is \code{NULL} (no check).}

\item{.var.name}{[character(1)]\cr
Name for \code{x}. Defaults to a heuristic to determine
the name using \code{\link[base]{deparse}} and \code{\link[base]{substitute}}.}
}
\value{
Depending on the function prefix:
 If the check is successful, all functions return \code{TRUE}.
 If the check is not successful, \code{assertArray} throws an error message,
 \code{testArray} returns \code{FALSE} and \code{checkArray} returns
 a string with the error message.
}
\description{
Check if an argument is an array
}
\examples{
checkArray(array(1:27, dim = c(3, 3, 3)), d = 3)
}
\seealso{
Other basetypes: \code{\link{assertAtomicVector}},
  \code{\link{checkAtomicVector}},
  \code{\link{testAtomicVector}};
  \code{\link{assertAtomic}}, \code{\link{checkAtomic}},
  \code{\link{testAtomic}}; \code{\link{assertCharacter}},
  \code{\link{checkCharacter}},
  \code{\link{testCharacter}}; \code{\link{assertComplex}},
  \code{\link{checkComplex}}, \code{\link{testComplex}};
  \code{\link{assertDataFrame}},
  \code{\link{checkDataFrame}},
  \code{\link{testDataFrame}};
  \code{\link{assertEnvironment}},
  \code{\link{checkEnvironment}},
  \code{\link{testEnvironment}};
  \code{\link{assertFactor}}, \code{\link{checkFactor}},
  \code{\link{testFactor}}; \code{\link{assertFunction}},
  \code{\link{checkFunction}}, \code{\link{testFunction}};
  \code{\link{assertIntegerish}},
  \code{\link{checkIntegerish}},
  \code{\link{testIntegerish}};
  \code{\link{assertInteger}}, \code{\link{checkInteger}},
  \code{\link{testInteger}}; \code{\link{assertList}},
  \code{\link{checkList}}, \code{\link{testList}};
  \code{\link{assertLogical}}, \code{\link{checkLogical}},
  \code{\link{testLogical}}; \code{\link{assertMatrix}},
  \code{\link{checkMatrix}}, \code{\link{testMatrix}};
  \code{\link{assertNumeric}}, \code{\link{checkNumeric}},
  \code{\link{testNumeric}}; \code{\link{assertVector}},
  \code{\link{checkVector}}, \code{\link{testVector}}
}


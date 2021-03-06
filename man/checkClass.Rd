% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/checkClass.r
\name{checkClass}
\alias{assertClass}
\alias{checkClass}
\alias{testClass}
\title{Check argument inheritance}
\usage{
checkClass(x, classes, ordered = FALSE)

assertClass(x, classes, ordered = FALSE, .var.name)

testClass(x, classes, ordered = FALSE)
}
\arguments{
\item{x}{[any]\cr
Object to check.}

\item{classes}{[\code{character}]\cr
Class names to check for inheritance with \code{\link[base]{inherits}}.}

\item{ordered}{[\code{logical(1)}]\cr
Expect \code{x} to be specialized in provided order.
Default is \code{FALSE}.}

\item{.var.name}{[character(1)]\cr
Name for \code{x}. Defaults to a heuristic to determine
the name using \code{\link[base]{deparse}} and \code{\link[base]{substitute}}.}
}
\value{
Depending on the function prefix:
 If the check is successful, all functions return \code{TRUE}.
 If the check is not successful, \code{assertClass} throws an error message,
 \code{testClass} returns \code{FALSE} and \code{checkClass} returns
 a string with the error message.
}
\description{
Check argument inheritance
}
\examples{
# Create an object with classes "foo" and "bar"
x = 1
class(x) = c("foo", "bar")

# is x of class "foo"?
testClass(x, "foo")

# is x of class "foo" and "bar"?
testClass(x, c("foo", "bar"))

# is x most specialized as "bar"?
testClass(x, "bar", ordered = TRUE)
}


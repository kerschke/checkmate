% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/checkDirectory.r
\name{checkDirectory}
\alias{assertDirectory}
\alias{checkDirectory}
\alias{testDirectory}
\title{Check for existence and access rights of directories}
\usage{
checkDirectory(x, access = "")

assertDirectory(x, access = "", .var.name)

testDirectory(x, access = "", .var.name)
}
\arguments{
\item{x}{[any]\cr
Object to check.}

\item{access}{[\code{character(1)}]\cr
Single string containing possible characters \sQuote{r}, \sQuote{w} and \sQuote{x} to
force a check for read, write or execute access rights, respectively.
Write and executable rights are not checked on Windows.}

\item{.var.name}{[character(1)]\cr
Name for \code{x}. Defaults to a heuristic to determine
the name using \code{\link[base]{deparse}} and \code{\link[base]{substitute}}.}
}
\value{
Depending on the function prefix:
 If the check is successful, all functions return \code{TRUE}.
 If the check is not successful, \code{assertDirectory} throws an error message,
 \code{testDirectory} returns \code{FALSE} and \code{checkDirectory} returns
 a string with the error message.
}
\description{
Check for existence and access rights of directories
}
\examples{
# Is R's home directory readable?
testDirectory(R.home(), "r")

# Is R's home directory readable and writable?
testDirectory(R.home(), "rw")
}
\seealso{
Other filesystem: \code{\link{assertAccess}},
  \code{\link{checkAccess}}, \code{\link{testAccess}};
  \code{\link{assertFile}}, \code{\link{checkFile}},
  \code{\link{testFile}};
  \code{\link{assertPathForOutput}},
  \code{\link{checkPathForOutput}},
  \code{\link{testPathForOutput}}
}


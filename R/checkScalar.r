#' Check if an argument is a single atomic value
#'
#' @templateVar fn Scalar
#' @template x
#' @template na-handling
#' @param na.ok [\code{logical(1)}]\cr
#'  Are missing values allowed? Default is \code{FALSE}.
#' @template checker
#' @family scalars
#' @export
#' @examples
#' testScalar(1)
#' testScalar(1:10)
checkScalar = function(x, na.ok = FALSE) {
  .Call("c_check_scalar", x, na.ok, PACKAGE = "checkmate")
}

#' @rdname checkScalar
#' @export
assertScalar = function(x, na.ok = FALSE, .var.name) {
  res = .Call("c_check_scalar", x, na.ok, PACKAGE = "checkmate")
  makeAssertion(res, vname(x, .var.name))
}

#' @rdname checkScalar
#' @export
testScalar = function(x, na.ok = FALSE) {
  res = .Call("c_check_scalar", x, na.ok, PACKAGE = "checkmate")
  isTRUE(res)
}

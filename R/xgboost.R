#' data.frame-first formula-second method for \code{\link[xgboost]{xgboost}}
#'
#' This function passes a data.frame, formula, and additional arguments to
#' \code{\link[xgboost]{xgboost}}.
#'
#' @seealso \code{\link[xgboost]{xgboost}}
#'
#' @inheritParams twidlr_defaults
#' @export
#'
#' @examples
#' xgboost(mtcars, hp ~ ., nrounds = 10)
#'
#' # Help page for function being twiddled
#' ?xgboost::xgboost
xgboost <- function(data, formula, ...) {
  check_pkg("xgboost")
  UseMethod("xgboost")
}

#' @export
xgboost.default <- function(data, formula, ...) {
  xgboost.data.frame(as.data.frame(data), formula, ...)
}

#' @export
xgboost.data.frame <- function(data, formula, ...) {
  dat <- model_as_xy(data, formula)
  xgboost::xgboost(data = dat$x, label = dat$y, ...)
}

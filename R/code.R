#' Foo (Generic Only)
#'
#' @description 
#' I would like to export this as a mere interface for \emph{other} packages. 
#' There shall be no default method that will be provided by \emph{this} package.
#' 
#' @param x \strong{Signature argument}.
#' 		Main input argument.
#' @param ... Further arguments to be passed to subsequent functions.
#' @author Janko Thyson \email{janko.thyson@@rappster.de}
#' @references \url{http://www.rappster.de/roxygen2-problem}
#' @export
#' @exportMethod

setGeneric(name = "foo", signature = "x", def = function(x, ...) {
    standardGeneric("foo")
})

#' Bar (Generic With Default Method)
#'
#' @description 
#' Just for illustration purposes, this is a generic for which \emph{this}
#' package also provides a method.
#' 
#' @param x \strong{Signature argument}.
#' 		Main input argument.
#' @param ... Further arguments to be passed to subsequent functions.
#' @author Janko Thyson \email{janko.thyson@@rappster.de}
#' @references \url{http://www.rappster.de/roxygen2-problem}
#' @rdname bar-methods
#' @export

setGeneric(name = "bar", signature = "x", def = function(x, ...) {
    standardGeneric("bar")
})
 
#' @param x  \code{\link{ANY}}.   
#' @return \code{\link{character}}. \code{"Hello World!"}
#' @rdname bar-methods
#' @aliases bar
#' @export

setMethod(f = "bar", signature = signature(x = "ANY"), 
    definition = function(x, ...) {
        "Hello World!"
})

#' Foo 
#'
#' @description 
#' I would like to export this as a mere interface for \emph{other} packages. 
#' There shall be no default method that will be provided by \emph{this} package.
#' 
#' @param x \strong{Signature argument}. Main input argument.
#' @export

setGeneric(name = "foo", signature = "x", def = function(x) {
    standardGeneric("foo")
})

#' Bar
#'
#' @description 
#' Just for illustration purposes, this is a generic for which \emph{this}
#' package also provides a method.
#' 
#' @param x \strong{Signature argument}.
#' 		Main input argument.
#' @rdname bar-methods
#' @export

setGeneric(name = "bar", signature = "x", def = function(x) {
    standardGeneric("bar")
})
 
#' @param x  \code{\link{ANY}}.   
#' @return \code{\link{character}}. \code{"Hello World!"}
#' @aliases bar
#' @export

setMethod(f = "bar", signature = signature(x = "ANY"), 
    definition = function(x) {
        "Hello World!"
})

#' Foo Bar
#'
#' @param x \code{\link{character}}.
#' @return \code{\link{character}}. Prints \code{x} and returns it.
#' @export

fooBar <- function(x) {
    print(x)
    x
}


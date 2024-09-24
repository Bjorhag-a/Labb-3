#' @title Euclidean algorithm to find the greatest common divisor of two numbers. 
#' 
#' @description
#' This function takes two numeric scalars or integers and find the greatest
#' common divisor between them. 
#' 
#' @references For further information about the Euclidean algorithm see here: 
#' \url{https://en.wikipedia.org/wiki/Euclidean}
#' 
#' @param a is a numeric scalar or integer.
#' @param b is a numeric scalar or integer.
#' @returns Will return the greatest common divisor between a and b  
#' @examples
#' euclidean(123612, 13892347912)
#' euclidean(100, 1000)

euclidean <- function(a, b) {
  stopifnot(is.numeric(a), is.numeric(b))
  
  while(b != 0) {
    t <- b
    b <- a %% b
    a <- t
  }
  return(a)
}
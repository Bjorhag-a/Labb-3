#' Find the greatest common divisor of two numbers. 
#' For further information about the Euclidean Algorithm see here: https://en.wikipedia.org/wiki/Euclidean
#' 
#' @param a A number.
#' @param b A number.
#' @returns The greatest common divisor 
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
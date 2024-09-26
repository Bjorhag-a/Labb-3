#' Wiki Graph
#' 
#' A dataset representing a graph with its nodes and weighted edges. Every row
#' represents one edge between two nodes.
#' 
#' The graph is taken from the wikipedia page about the dijkstra algorithm: 
#' \url{https://en.wikipedia.org/wiki/Dijkstra\%27s_algorithm}
#'
#' @format ## `wiki_graph`
#' A data frame with 18 rows and 3 columns:
#' \describe{
#'   \item{v1}{Vertex 1}
#'   \item{v2}{Vertex 2}
#'   \item{w}{Weight of the edge}
#' }
"wiki_graph"
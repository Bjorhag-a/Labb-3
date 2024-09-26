#' @title Dijkstra´s algorithm that calculate the shortest distance from two nodes.
#' 
#' @description Uses Dijkstra´s algorithm to calculate the shortest path from a
#'   given initial node to every other node in the graph. The graph is a data
#'   frame containing the edges between nodes and the corresponding weights.
#' 
#' @param graph A data.frame with three variables "v1", "v2" and "w" where "v1"
#'   is the start node and "v2" is the end node and "w" represent the distance
#'   between "v1" and "v2".
#' 
#' @param init_node is a numeric scalar that exist in the graph and is the initial node. 
#' 
#' @returns Will return a vector with the distance from the initial node to each node in the graph in index order. 
#' 
#' @references For more information about the Dijkstra's algorithm see here:
#'   \url{https://en.wikipedia.org/wiki/Dijkstra\%27s_algorithm}
#'   
#' @examples wiki_graph <- data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
#' v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
#' w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))
#'dijkstra(wiki_graph, 1)


dijkstra <- function(graph, init_node){
  
  stopifnot(is.data.frame(graph), is.numeric(init_node))
  
  vertex  <- unique(c(graph$v1, graph$v2))
  
  stopifnot(init_node %in% vertex)
  
  dist <- rep(Inf, length(vertex))
  
  dist[(init_node)] <- 0
  
  Q <- vertex 
  
  while (length(Q) > 0) {
    
    u <- min(Q)
    
    Q <- Q[Q != u]
    
    neighbors <- graph[graph$v1 == u, ]
    
    for (i in 1:nrow(neighbors)) {
      
      v <- neighbors$v2[i]
      
      weight <- neighbors$w[i]
      
      alt <- dist[(u)] + weight
      
      if (alt < dist[(v)]) {
        
        dist[(v)] <- alt
        
      }
      
    }
    
  }
  
  return(as.numeric(dist))
}


library(visNetwork);

n_nodes = 5

n_edges = 6

nodes <- data.frame(matrix(ncol = 0, nrow = n_nodes))
nodes$id <- 1:5
nodes$label <- c('A', 'B', 'C', 'D', 'E')
nodes$shape <- 'circle'
nodes$color.background <- 'white'
nodes$color.border <- 'black'

edges <- data.frame(matrix(ncol = 0, nrow = n_edges))
edges$from <- c(1, 1, 2, 3, 2, 4)
edges$to <- c(2, 3, 3, 4, 5, 5)
edges$width <- 2
edges$color <- 'black'

visNetwork(nodes, edges, width = '100%')
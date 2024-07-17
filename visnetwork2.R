library(visNetwork)

nodes <- read.csv(file = "wezly1.csv", sep = ',', header = TRUE, quote = "'")
edges <- read.csv(file = "krawedzi.csv", sep = ',', header = TRUE, quote = "'")

edges$label <- as.character(edges$label)

visNetwork(nodes, edges, width = '100%')
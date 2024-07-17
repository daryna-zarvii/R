library(rpart)
library(rpart.plot)
library(visNetwork)
library (sparkline)

df <- read.csv(file = 'glos.csv', sep = ',', header = TRUE, stringsAsFactors = TRUE)

dt <- rpart(Klasa~., data = df)

plot(dt)
text(dt, use.n = TRUE)

prp(dt)

visTree(dt, main = "Drzewo decyzyjne", width = "100%", shapeVar = "square",
        direction = "LR")
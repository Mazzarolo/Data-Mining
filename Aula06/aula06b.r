conta <- 0
myMat <- matrix(nrow = 10, ncol = 10)

for (i in 1:10) {
    for (j in 1:10) {
        if (i == j) {
            conta <- conta + 1
            myMat[i, j] <- conta
        } else {
            myMat[i, j] <- 0
        }
    }
}

vet <- 0:9

for (i in 1:10) {
    for (j in 1:10) {
        if (i == j) {
            vet[i] <- myMat[i, j]
        }
    }
}

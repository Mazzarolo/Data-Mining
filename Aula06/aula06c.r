ds <- read.csv(file = "z.csv", header = FALSE)

ds2 <- data.frame()

vet <- sort(unique(unlist(ds)))

# code to set the letters as the first row

#for (i in 1:length(vet))
    #ds2[1, i] <- vet[i]

# code to verify the letters in each row, and complete the dataset

for (i in 1 : nrow(ds)) {
    for (j in 1 : length(vet)) {
        if (any(ds[i, ] == vet[j])) {
            ds2[i, j] <- "SIM"
        } else {
            ds2[i, j] <- "NÃO"
        }
    }
}

# code to set the letters as the header

names(ds2) <- vet
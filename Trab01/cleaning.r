ds1 <- read.csv(file = "_ASSOC_BGFriends_01.csv", header = TRUE)
ds2 <- read.csv(file = "_ASSOC_BGFriends_02.csv", header = TRUE)

ds <- rbind(ds1, ds2)

for (i in 1 : nrow(ds)) {
    ds[i, 2] <- gsub(" ", "", ds[i, 2])
    ds[i, 2] <- gsub("<e7>", "c", ds[i, 2])
    ds[i, 2] <- gsub("ç", "c", ds[i, 2])
    ds[i, 2] <- toupper(ds[i, 2])
}

players <- c('STEEVE', 'FRANCOIS', 'ALONSO', 'JIMMY', 'RICK', 'YURIKO', 'BARBARA', 'SHELDA')

encodedDS <- data.frame()

for (i in 1 : nrow(ds)) {
    for (j in 1 : length(players)) {
        if (grepl(players[j], ds[i, 2])) {
            encodedDS[i, j] <- 1
        } else {
            encodedDS[i, j] <- 0
        }
    }
}

names(encodedDS) <- players

WIN <- c()

for (i in 1 : nrow(ds)) {
    if(ds[i, 4] > ds[i, 3])
        WIN[i] = 1
    else
        WIN[i] = 0
}

encodedDS <- cbind(encodedDS, WIN)

write.csv(encodedDS,"DS.csv", row.names = FALSE)
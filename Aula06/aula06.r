ds <- read.csv(file = "DimR00.csv")

ds <- ds[, 2]

plot(ds)

correctDs <- as.integer(ds)
lines(correctDs, col = "blue")

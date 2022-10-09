x <- read.csv(file = "LD00c.csv")


for (i in 1 : ncol(x)) {
    if (is.numeric(x[, i])) {
        x[!complete.cases(x[, i]), i] <- mean(x[, i], na.rm = TRUE)
    }
}

for (col in x) {
    if (is.numeric(col)) {
        col[!complete.cases(col)] <- mean(col, na.rm = TRUE)
        print("Média")
        print(mean(col, na.rm = TRUE))
        print("Máx")
        print(max(col, na.rm = TRUE))
        print("Min")
        print(min(col, na.rm = TRUE))
    }
}

max <- x[1, 2]


print(head(x))
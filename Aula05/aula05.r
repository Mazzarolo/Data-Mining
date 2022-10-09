x <- read.csv(file = "LD00c.csv")

library(tidyr)

# code to complete database using the previous and/or next values

x <- x %>% fill(names(x), .direction = "downup")

# code to complete database using the general mean of each col

# for (i in 1 : ncol(x)) {
#     if (is.numeric(x[, i])) {
#         x[!complete.cases(x[, i]), i] <- mean(x[, i], na.rm = TRUE)
#     }
# }

for (col in x) {
    if (is.numeric(col)) {
        print("Média")
        print(mean(col, na.rm = TRUE))
        print("Máx")
        print(max(col, na.rm = TRUE))
        print("Min")
        print(min(col, na.rm = TRUE))
    }
}

print(x[which.max(x$TempMaxima), 2])

hist(x$TempMinima)

print(head(x))

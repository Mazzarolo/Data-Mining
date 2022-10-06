#arqUrl <- "http://www-usr.inf.ufsm.br/~joaquim/UFSM/DM/ds/usr_data.csv"
#download.file(arqUrl, destfile = "./test.csv", method = "curl")

a <- c(3, 5, 6, 7, 9, 14, 16, 16, NA, 27, 34, 50, 61)
b <- c(10, 9, 10, 11, 8, 11, 10, 12, NA, 11, 10, 8, 10)
c <- c(0, 2, 3, 0, 4, 2, 0, 6, 2, 0, 4, 5, NA, 3, 4, NA, 5)

# a[!complete.cases(a)] <- mean(a, na.rm = TRUE)

library(ggplot2)

x_a <- 1 : length(a)

modelo <- lm(x_a - a)

qplot(x_a, a, data = modelo, geom = c("point", "smooth"))

summary(a)
a <- c(1, 1, 0, 0, 1)
b <- c(0, 1, 0, 1, 1)
c <- c(0, 1, 1, 0, 1)
goal <- c(1, 0, 1, 0, 1)

df <- cbind(a, b, c, goal)

show(df)

library(arules)

# regras <- apriori(df, parameter = list(supp = 0.01, conf = 0.2))

regras <- apriori(df, parameter = list(target = "rules"))

inspect(regras)

df2 <- subset(regras, (lhs %in% "goal"))

inspect(df2)

ds <- read.csv(file = "DS.csv", header = TRUE)

show(ds)

for (i in 1 : ncol(ds)) {
    ds[, i] <- factor(ds[, i])
}

str(ds)

library(arules)

library(stringr)

rules <- apriori(ds, parameter = list(supp = 0.1, conf = 0.9, target = "rules"))

rules <- subset(rules, rhs %pin% "WIN" | lhs %pin% "WIN")

rules <- as((sort(rules, by = c("confidence", "lift"))), "data.frame")

winRules <- rules[0, ]

loseRules <- rules[0, ]

for (i in 1 : nrow(rules)) {
    if (grepl("WIN=1", rules[i, 1])) {
        winRules[nrow(winRules) + 1, ] <- rules[i, ]
    } else if (grepl("WIN=0", rules[i, 1])) {
        loseRules[nrow(loseRules) + 1, ] <- rules[i, ]
    }
}

write.csv(rules,
 "Rules.csv", row.names = FALSE)

 write.csv(winRules,
 "WinRules.csv", row.names = FALSE)

write.csv(loseRules,
 "LoseRules.csv", row.names = FALSE)


ds <- read.csv(file = "DS.csv", header = TRUE)

show(ds)

for (i in 1 : ncol(ds)) {
    ds[, i] <- factor(ds[, i])
}

str(ds)

library(arules)

rules <- apriori(ds, parameter = list(supp = 0.1, target = "rules"))

rules <- subset(rules, rhs %pin% "WIN")

inspect(head(sort(rules, by = "confidence"), 10))

write.csv(as(sort(rules, by = "confidence"), "data.frame"),
 "Rules.csv", row.names = FALSE)

cesta <- read.csv("_ASSOC00.csv", stringsAsFactor = TRUE)

cesta <- cesta[, -1]

library(arules)

for (i in 1 : ncol(cesta)) {
    cesta[, i] <- factor(cesta[, i])
}

regras <- apriori(cesta, parameter =
    list(supp = 0.1, conf = 0.6, target = "rules"))

inspect(regras)

sub_regras <- subset(regras, lhs %pin% "Carvao")
quality(sub_regras)

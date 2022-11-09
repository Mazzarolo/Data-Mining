df <- read.csv(file = "fakeMarvelData.csv")

show(df)

show(df[df$Afiliacao == "Avengers", c("Nome", "Afiliacao", "QI")])

show(df[is.na(df$QI), ])

subDf <- df[!is.na(df$QI) & df$QI > 120, ]

show(subDf)

library(plyr)

show(subDf[order(subDf$QI, decreasing = TRUE), ])
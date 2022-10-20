df <- read.csv(file = "fakeMarvelData.csv")

show(df)

show(df[df$Afiliacao == "Avengers", c("Nome", "Afiliacao", "QI")])

show(df[is.na(df$QI), ])
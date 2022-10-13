df_vendasLucro <- read.csv(file = "vendas_lucro.csv")

show(df_vendasLucro)

df_vendasLucroA <- df_vendasLucro

for (i in 1 : ncol(df_vendasLucro))
    df_vendasLucroA[, i] <- (df_vendasLucro[, i] - min(df_vendasLucro[, i])) / (max(df_vendasLucro[, i]) - min(df_vendasLucro[, i]))

show(df_vendasLucroA)

df_vendasLucroB <- df_vendasLucro

for (j in 1 : ncol(df_vendasLucro)) {
    df_vendasLucroB[, j] <- ((df_vendasLucro[, j] - mean(df_vendasLucro[, j])) / sd(df_vendasLucro[, j]))
}

show(df_vendasLucroB)

df_vendasLucroC <- df_vendasLucro

for (j in 1 : ncol(df_vendasLucro)) {
    q <- quantile(df_vendasLucro[, j], prob = c(.25, .5, .75))
    iqr <- q[3] - q[1]
    df_vendasLucroC[, j] <- ((df_vendasLucro[, j] - q[2]) / iqr)
}

show(df_vendasLucroC)

conc <- cbind(df_vendasLucro, df_vendasLucroA, df_vendasLucroB, df_vendasLucroC)
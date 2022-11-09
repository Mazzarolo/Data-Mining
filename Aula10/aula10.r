a <- c(1, 1, 0, 0, 1, 1, 0, 1)
b <- c(0, 1, 0, 1, 1, 0, 0, 0)
c <- c(0, 1, 1, 0, 1, 1, 1, 0)
goal <- c(1, 0, 1, 0, 1, 1, 1, 1)

df <- cbind(a, goal)

show(df)

sup <- function(a) {
    return(sum(a) / length(a))
}

print((sup(a) * sup(!goal)) / sup(a & !goal))

sup <- function(a, b) {
    return(sum(a & b) / length(a))
}

print(supComp(a, goal) - sup(a, a) * sup(goal, goal))

conf <- function(a, b) {
    return(sup(a, b) / sup(a, a))
}

print(conf(a, goal) - sup(goal, goal))
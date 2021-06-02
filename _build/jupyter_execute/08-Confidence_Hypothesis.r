n <- 100
df <- 5
x <- c(0:(30*n))/n
v <- dchisq(x, df)
plot(x, v, type='l')

v <- pchisq(x, df)
plot(x, v, type='l')

m <- 100
x <- c((-3*m):(3*m))/m
df <- 5
v <- dt(x, df)
v2 <- dnorm(x, 0, 1)
plot(x, v, type='l', col='blue')
lines(x, v2, col='red')

m <- 100
x <- c((-3*m):(3*m))/m
df <- 5
v <- pt(x, df)
v2 <- pnorm(x, 0, 1)
plot(x, v, type='l', col='blue')
lines(x, v2, col='red')

n <- 100
df1 <- 5
df2 <- 6
x <- c(0:(30*n))/n
v <- df(x, df1, df2)
plot(x, v, type='l')

v <- pf(x, df1, df2)
plot(x, v, type='l')

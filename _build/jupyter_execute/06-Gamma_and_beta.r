r <- c(0:10)
v <- dpois(r, 0.9)
plot(r, v)

n <- 100
t <- c(0:(n*5))/n
v <- dexp(t, 0.9)
plot(t, v, type='l')

qexp(0.95, 0.9)

pexp(3.3286, 0.9)

n <- 100
lambda <- 0.9
k <- 2
t <- c(0:(n*5))/n
v <- dgamma(t, rate = lambda, shape = k)
plot(t, v, type='l')



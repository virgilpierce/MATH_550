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

# Note that 1/\beta is the rate from above; in this case then $\beta$ is called the scale

n <- 100
beta <- 1/0.9
alpha <- 2
t <- c(0:(n*5))/n
v <- dgamma(t, scale = beta, shape = alpha)
plot(t, v, type='l')

v <- pgamma(t, scale = beta, shape=alpha)
plot(t, v, type='l')

n <- 500
beta <- 4
alpha <- 2
t <- c(0:n)/n
v <- dbeta(t, shape1=alpha, shape2 = beta)
plot(t, v, type='l')

v <- pbeta(t, shape1=alpha, shape2 = beta)
plot(t, v, type='l')



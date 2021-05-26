p <- 0.51
r <- c(0:25)
v <- (1-p)^(r) * p
plot(r, v)

p <- 0.51
(1-p)^3 * p

c <- (1-0.51)^0 * 0.51 + (1-0.51)^1 * 0.51 + (1-0.51)^2 * 0.51
c

pgeom(2, 0.51)

1 - pgeom(2, 0.51)

p <- c(0:1000)/1000
v <- 1 - pgeom(2, p)
plot(p, v, type="l")
# You can safely ignore the warning if you get it, 

N <- 100
r <- c(0:N)
p <- 0.51
sum( (r+1)*(1-p)^r * p )

N <- 100
r <- c(0:N)
p <- 0.51
sum( (r+1)^2 * (1-p)^r * p )  - 1/p^2

lambda <- 1.1
r <- c(0:100)
v <- dpois(r, lambda)
plot(r, v)

lambda <- 1.1
n <- 100 # The upper bound on n for our plot
r <- c(-1:(10*n))/10
plot(r, ppois(r, lambda), type="l")

r <- c(0:100)
lambda <- 1.1
sum( r*dpois(r, lambda) )

r <- c(0:100)
lambda <- 1.1
sum( r^2*dpois(r, lambda) ) - lambda^2

qpois(0.95, 1.1)

ppois(3, 1.1)

1 - ppois(2, 1.1)



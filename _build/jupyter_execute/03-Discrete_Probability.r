x <- c("H", "T")
result <- sample(x, 200, replace=TRUE)
result

x <- c(1, 0)
result <- sample(x, 130, replace = TRUE, prob=c(0.38, 0.62) )
result

sum(result)

sum(sample(x, 130, replace=TRUE, prob=c(0.38, 0.62)))

# We are going to keep track of the results in a variable called trials, so we first initalize this variable as an empty column
trials <- c()

# Then our for loop - in this case we just want the loop to repeat the command 100 times
for (k in 1:100) { 
  # each loop will compute the number of food insecure students in our random sample of 130 students, 
  # make that a column, and 
  # then add that to the end of the trials column
  trials <- c(trials, sum(sample(x, 130, replace=TRUE, prob=c(0.38, 0.62))))
}

trials

# The paramter breaks is determining how many bins to use
hist(trials, breaks=10)

summary(trials)

0.38*130

130 * 0.38 * 0.62^129

choose(130, 2) * 0.38^2 * 0.62^128

r <- c(0:130)
v <- choose(130, r) * 0.38^r * 0.62^(130 - r)
plot(r, v)

p <- 0.01
n <- 30
r <- c(0:n)
v <- choose(n, r) * p^r * (1-p)^(n - r)
plot(r, v)

sum(v)

r <- c(0:39)
sum( choose(130, r) * 0.38^r * 0.62^(130 - r) )

dbinom(39, 130, 0.38)

pbinom(39, 130, 0.38)

n <- 130
p <- 0.38
r <- c(-1:(10*n))/10
plot(r, pbinom(r, n, p), type="l")

r <- c(0:130)
sum( r*dbinom(r, 130, 0.38))

r <- c(0:130)
sigma2 <- sum( r^2*dbinom(r, 130, 0.38)) - (130*0.38)^2
sigma2

sqrt(sigma2)

n <- 130
p <- c(0:1000)/1000
v <- n*p*(1-p)
plot(p, v, type="l")



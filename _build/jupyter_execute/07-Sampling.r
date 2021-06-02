sample <- rpois(5, 2)
sample

sample <- rpois(200, 2)
mean(sample)

hist(sample, 20)

result <- c()
for (k in 1:50) {
    result <- c(result, mean(rpois(5, 2)) )
}
hist(result)

qnorm(0.025, 0, 1)

# It's a compute so lets use it to keep track of a

a = - qnorm(0.025, 0, 1)
a

# I always check that I used the inverse correctly and check the tails
1 - pnorm(a, 0, 1)

pnorm(-a, 0, 1)

# we can also check the interior

pnorm(a, 0, 1) - pnorm(-a, 0, 1)

2.98 - a*0.32 / sqrt(10); 2.98 + a*0.32 / sqrt(10)

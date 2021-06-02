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



n <- 10
p <- 0.38
r <- c(-1:(50*n))/50
plot(r, pbinom(r, n, p), type="l")

# We need to write functions so they take a column of input values and return a column of output values, 
# This will make what we do next easier.

F <- function(x) {
  result <- c()
  
  for (k in x) {
    
    # The actual function - note the if statements we need because of the piecewise nature
    if (k < 0) {
      result <- c(result, 0)
    }
    else if (k > 1) {
      result <- c(result, 1)
    }
    else {
      result <- c(result, k)
    }
  }
  result
} 

# testing that it works
F(c(-0.25, 0.25, 3))

n <- 100
x <- c((-2*n):(2*n))/n
plot(x, F(x), type = "l")

result = runif(50, 0, 1)
result

hist(result, 20)

summary(result)

var(result)

(1-0)^2 / 12



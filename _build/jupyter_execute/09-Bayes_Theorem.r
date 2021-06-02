PFC = 12/52 * (51-11)/51 + (51-12)/52* 12/51 + 12/52 * 11/51
PFC

PQH_given_FC = 2/52 / PFC
PQH_given_FC

n <- 200
x <- c(0:n)/n
v0 <- dunif(x, 0, 1)
v1 <- x/2
v2 <- x^2/3
plot(x, v0, type='l', col='red', ylim = c(0, 1.1))
lines(x, v1, col='green')
lines(x, v2, col='blue')

N <- 100
Hn <- c(1:N)/N
prior1 <- ceiling( c(1:N)/N)/N
plot(Hn, prior1)

PD_given_Hn <- (1- Hn)^3 * Hn
PD_given_Hn

PD <- sum(prior1 * PD_given_Hn)
PD

posterior1 <- prior1 * PD_given_Hn / PD
plot(Hn, posterior1)

prior2 <- (1 - Hn)
prior2 <- prior2 / sum(prior2)
plot(Hn, prior2)

# check that the prior estimate has total probability 1
sum(prior2)

PD <- sum(prior2 * PD_given_Hn)
PD

posterior2 = prior2 * PD_given_Hn / PD
plot(Hn, posterior2)

sum(posterior2[0:51])

sum(posterior1[0:51])

PD_given_Hn = (1- Hn)^2 * Hn
PD = sum( posterior1 * PD_given_Hn)
PD

posterior1_update = posterior1 * PD_given_Hn / PD
plot(Hn, posterior1_update)

PD = sum( posterior2 * PD_given_Hn)
PD

posterior2_update = posterior2 * PD_given_Hn / PD
plot(Hn, posterior2_update)

sum( posterior1_update[1:49]);
sum( posterior2_update[1:49])



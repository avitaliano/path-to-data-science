
a <- 0.5 * 1/8
b <- 0.5 * 1/6
a + b

# q8:
# p(rain) = 0.2
# p(rain 2 days in a week)?
binomial_dist <- function(n, k){
  return(
    factorial(n) / (factorial(k) * factorial(n-k))
  )
}
binomial_probability <- function(n, k, p){

  return(
    binomial_dist(n,k) * p^k * (1 - p)^(n - k)
  )

}
binomial_probability(7, 2, 0.2)

# q9:
# p(rain) = 0.2
# p(rain >= 2 days in a week)?
# p(rain = 2) + p(rain = 3) + ... p(rain = 7)
sum(sapply(2:7, function(x) binomial_probability(7, x, 0.2)))

# q10:
iq.mean <- 100
iq.sd <- 15
# z(130)?
( 130 - iq.mean) / iq.sd

# q11
# ball kick mean = 10, sd = 1
# kick back mean = 5, sd = 0.5
# distribution from initial position?
m1 <- 10
sd1 <- 1
m2 <- -5
sd2 <- 0.5
# mean
m1 + m2
# sd
sqrt(sd1^2 + sd2^2)

# q12
# mean = 70 inches, variance = 25 inches
# in cm?  1 inch = 2.54 cm
m <- 70
v <- 25
ratio <- 2.54
# new mean
m * ratio
# new variance
sd <- sqrt(v)
(sd * ratio)^2

# q13
n <- 10000
heads <- 4950
mean <- heads/n
x <- c(rep(1, heads), rep(0, n - heads))
var <- var(x)
ci <- sqrt(var/n) * 1.96 # quiz asked for 90%, but answer is for 95%
(mean - ci) * 10000
(mean + ci) * 10000

# q14
data <- c( 0.79, 0.70, 0.73, 0.66, 0.65, 0.70, 0.74, 0.81, 0.71, 0.70)
mu <- mean(data)
var <- var(data)
ci <- 1.96 * sqrt(var/ length(data))
mu - ci
mu + ci

# q15
x <- c(0,1,2)
y <- c(0,2,2)
b <- sum ( (x - mean(x)) * (y - mean(y) ) ) / sum( (x - mean(x))^2)
a <- mean(y) - b * mean(x)

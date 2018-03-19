# Hypothesis Test

# First way to test an NULL hypothesis:

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

critical_region <- function(n, p, limit = 0.05){

  binomial_prob <- sapply(1:n, function (x) binomial_probability(n, x, p))
  return(
    cbind(
      1:n,
      binomial_prob,
      cumsum(binomial_prob) < limit
      )
    )
}

hypothesis_test <- function(n, k, p, limit = 0.05){
  return(
    critical_region(n, p)[k,3] == 0
  )
}

critical_region(15, 0.9)
hypothesis_test(15, 10, 0.9) # false
hypothesis_test(15, 11, 0.9) # true

# Second way to test an NULL hypothesis:
sample = c(1:15)
sample

hypothesis_test2 <- function(sample, value,
                             conf_interval = 0.95,
                             one_tail = TRUE){
  m <- mean(sample)
  var <- var(sample)
  if (one_tail) {
    a <- abs(qt(conf_interval, length(sample) - 1))
  } else {
    a <- abs(qt( (1 - conf_interval) / 2 , length(sample) - 1))
  }

  size_ci <- a * sqrt(var/length(sample))

  lower_ci <- m - a
  upper_ci <- m + a

  return( c(lower_ci, upper_ci, value >= lower_ci && value <= upper_ci))

}

hypothesis <- 26

sample <- c( rep(21, 4), rep(24, 6), rep(26, 7), rep(29, 11), rep(40, 2))
length(sample) # N
mean(sample)
var(sample)
qt( (1 - 0.95) /2, 29) # a
hypothesis_test2(sample, hypothesis)

# pool margin of error
candidate_a <- 55
candidate_b <- 45

n <- 100
p <- candidate_a / n
not_p <- 1 - p
ci <- 1.96 * sqrt(p *  not_p/n)
ci

# if we want 5% margin of error: how many people in the sample?
new_ci <- 0.05
n = 1.96^2 * p * not_p / new_ci^2
ceiling(n) # 381 people to achieve 5% of margin of error

# Weight loss treatment
# Treatment A
a.n <- 10000
a.mean <- 10
a.sd <- 10
a.ci <- 1.96 * sqrt(a.sd^2/a.n)
a.mean - a.ci
a.mean + a.ci

# Treatment B
b.n <- 10000
b.mean <- 20
b.sd <- 20
b.ci <- 1.96 * sqrt(b.sd^2/b.n)
b.mean - b.ci
b.mean + b.ci

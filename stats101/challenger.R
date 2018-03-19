# challenger
# jan 28 1986

temperature = 36 # (F)

x = c(70, 57, 63, 70, 53, 75, 58) # temperature
y = c(1, 1, 1, 1, 2, 2, 1) # o-ring failures

x.mean <- mean(x)
y.mean <- mean(y)

b <- sum ((x - x.mean) * (y - y.mean)) / sum((x - x.mean)^2)
a <-  y.mean - b * x.mean

# another way to compute a and b
x.sum <- sum(x)
y.sum <- sum(y)
n <- length(x)
x2.sum <- sum(x^2)
xy.sum <- sum(x * y)

b2 <- (xy.sum - 1/n * x.sum * y.sum) / (x2.sum - 1/n * x.sum^2)
a2 <- 1/n * y.sum - b2 * 1/n * x.sum
# how many o-rings would failure appliyng this regression?
36 * b2 + a2 # 1.24

# considering all flights
x.sum <- 1600
y.sum <- 9
n <- 23
x2.sum <- 112400
xy.sum <- 574

b3 <- (xy.sum - 1/n * x.sum * y.sum) / (x2.sum - 1/n * x.sum^2)
a3 <- 1/n * y.sum - b3 * 1/n * x.sum
36 * b3 + a3 # 1.99

plot( 1:100, (1:100)^2)

f <- function(x) {4 - x}
plot(f(0:4))

y <- function(x, a, b) { b * x + a }

# Linear Regression

X <- c(6,2,1,-1)
Y <- c(7,3,2,0)

x.mean <- mean(X)
y.mean <- mean(Y)

b <- sum ((X - x.mean) * (Y - y.mean)) / sum((X - x.mean)^2)
a <-  y.mean - b * x.mean

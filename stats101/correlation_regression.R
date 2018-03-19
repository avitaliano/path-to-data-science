
x <- c(1,2,3)
y <- c(4,7,13)

# y = b * x + a
x.mean <- mean(x)
y.mean <- mean(y)
b <- sum( (x - x.mean) * (y - y.mean) ) /
  sum( (x - x.mean)^2 )
b

# r
correlation_coef <- function(x, y){
  sum( (x - mean(x)) * (y - mean(y)) ) /
    sqrt( sum((x - mean(x))^2) * sum((y - mean(y))^2))
}

r <- correlation_coef(x, y)
r

# double Y:
y2 <- 2 * y
y2.mean <- mean(y2)
b2 <- sum( (x - x.mean) * (y2 - y2.mean) ) /
  sum( (x - x.mean)^2 )
b2

r2 <- correlation_coef(x, y2)
r2

# then double X:
x2 <- x * 2
x2.mean <- mean(x2)
b3 <- sum( (x2 - x2.mean) * (y2 - y2.mean) ) /
  sum( (x2 - x2.mean)^2 )
b3

r3 <- correlation_coef(x2, y2)
r3


# relation b/r = sd(y)/ sd(x)
b/r == sd(y)/sd(x)


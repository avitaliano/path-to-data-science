# weight case study

n = 163 # 163 samples

# quartile outlier removal
# how many samples survive?
163 - (2 * 0.25 * 163) + 2

n = 83
x.sum <- 6618.47
x2.sum <- 528679

x.mean <- x.sum / n
x.var <- x2.sum / n - x.sum^2 / n^2
x.sd <- sqrt(x.var)
x.ci <- sqrt(x.var/n) * 1.96

# my weight = 82
x.z <- (82 - x.mean) / x.sd

# weight? z = 2
x <- x.sd * -2 + x.mean
x

null_hyp <- 73
null_hyp > x.mean - x.ci && null_hyp < x.mean + x.ci

# correlation this year/last year sebastian's weight
x.mean <- 81.2
y.mean <- 79.7
x.sd <- 10.6
y.sd <- 9.34
xy.cov <- 75.36 # 1/n * sum( (x - x.mean) * (y - y.mean) )
r <- xy.cov / (x.sd * y.sd)
r
b <- xy.cov / x.sd^2
b
a <- y.mean - b * x.mean
a
# linear regression:
# y = 25.2 + 0.67 * x

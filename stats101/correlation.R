# Correlation

# correlation coefficient r
# -1 to 1
# r > 0: positive relationship between x,y
# r < 0: negative relationship
# r = 0 no relationship
# abs(r) -> 1 as relationship becomes increasingly linear

# covariance
correlation_coef <- function(x, y){
  sum( (x - mean(x)) * (y - mean(y)) ) /
    sqrt( sum((x - mean(x))^2) * sum((y - mean(y))^2))
}

x <- c(3,4,5)
y <- c(8, 3, 7)
r <- corr_coef(x,y)
r # -0.1889822


# Monty Hall Problem
# Car behind one of 3 doors
# you choose door 2, and Monty Hall says door 3 is empty
# should you change your guess?
p.door1 <- 0.667
p.door2 <- 0.333
p.door3 <- 0
# why?

simulate <- function(n, change.door = TRUE){

  k <- 0
  for (i in 1:n){

    truth <- sample(1:3, 1, replace=T)
    guess1 <- sample(1:3, 1, replace=T)

    if (truth == guess1){

      # if I guess right Monte would pick a different door
      monte <- sample(1:3, 1, replace=T)
      while (monte == truth){
        monte <- sample(1:3, 1, replace=T)
      }

    } else {

      # if I guess wrong, Monte would pick an empty door
      # because they sum 6 (1 + 2 + 3)
      monte <- 6 - truth - guess1
    }

    # i then change my guess
    guess2 <- 6 - guess1 - monte

    if (change.door){
      if ( guess2 == truth ){

        # if I suceeded, increase the counter
        k <- k + 1
      }
    } else {
      if ( guess1 == truth ){

        # if I suceeded, increase the counter
        k <- k + 1
      }
    }

  }
  return ( as.numeric(k)/as.numeric(n) )
}
simulate(1000) # changing door
simulate(1000, change.door = FALSE) # not changing door




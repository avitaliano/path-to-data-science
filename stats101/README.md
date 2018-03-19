# Intro to Statistics - Udacity

## Probability

* `P(A) = 1 - P(not A)`

## Total Probability: 

* `P(A) = P(A | B) * P(B) + P(A | NOT B) * P(NOT B)`
* `P(A | B) + P( NOT A | B ) = 1`

## Bayes Rule
* prior probability * test evidence -> posterior probability
* prior
  * `P(B)`
* test evidence
  * `P(A | B) = SENSITIVITY`
  * `P(NOT A | NOT B) = SPECITIVITY`
* posterior probability
  * `P(B , A) = P(B) * P( A | B )`
  * `P(NOT B , A ) = P(NOT B) * P(A | NOT B)`
* normalized
  * `P(A) = P(B , A) + P(NOT B , A)`
  * `P(B | A) = P(B , A) / P(A)`
  
## Continuous Probability Distributions
* In continuous distributions, every outcome has probability zero.

## Correlation vs. Causation
* Confounding Variable: hidden variable
* Reverse Causation

## Density ~ Probability for Continuous Space
* f(x) integrates to 1
* f(x) is dentity ~ non-negative

## Estimators (fake or not to fake)
### Maximum Likelihook Estimator
* Data: X1, X2... Xn
* `MLE: 1/n * Sum(Xi)`

### Laplacian Estimator
* Estimation Problem: 
  * `Data -> p`
  * `p -> p(data)`
  * data n = 1 or too small , mle always give biased probalility
* Solution: add fake data (smooth estimator)
* Dirichlet Prior (distribuição)
* Example: Die
  * Data: \[1, 2, 2, 3\]
  * p(1)
    * MLE: 0.25 (1/4)
    * Laplace: 
      * data: 1, 2, 2, 3 + 1, 2, 3, 4, 5, 6
      * p(1) = 0.2
  * p(2)
    * MLE: 0.5
    * Laplace: 0.3

### Averages
* Mean: `1/N * sum(Xi)`
* Median
* Mode

### Variance: 
 * `1/N * sum( (Xi - mu)^2)`
 * other way to write it withour using the mean: 
   * `sum(Xi^2)/N - sum(Xi)^2/N^2`
 * Standard Deviation: `sd = sqrt(var)`
* Standard Score: `z = (X - mu) / sd`

### Binomial Distribution
 * B.D. = `n! / ( k! * (n-k)! )   * p^k  * (1 - p)^(n-k)`
 
### Normal Distribution: 
* `N( X; nu, sigma^2) = e ^ [ -1/2 * (X -mu)^2 / sigma^2 ]   * 1 / sqrt(2 * pi * sigma^2)`

* Manipulating Normals: 
* Multipling Normals:
  * `N(mu, sigma^2) = A  :: a*A + b  -> mu' = a*mu + b, sigma^2' = a * sigma^2`
* Adding Normals: 
  * `A = N(mu, sigma^2) , B = N(mu, sigma^2) :: A + B = N ( 2 * mu, 2 * sigma^2 )`
* Subtracting Normals: 
  * `A = N(mu, sigma^2) , B = N(mu, sigma^2) :: A - B = N ( 0 , 2 * sigma^2 )`
  
### Confidence Intervals 
* `z = sd(N) / sqrt(N) * 1.96`

### Probability Mean/Variance: 
* `p = p, mu = p, sigma^2 = p * (1 - p)`

### T-Table (significance level = alpha)
 * used to samples N < 30. Degree of Freedom = N - 1

### Hypothesis Test: 
* sample (stats) information (stats) decision
* Null Hypothesis
* Alternate Hypothesis

#### Critical Region: 
* When sample stays at nth-% (usualy 5%) probability region, that invalidates null hypothesis
```R
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
```
* or use confidence interval

### Regression
* `b = sum ((x - mean(x)) * (y - mean(y))) / sum((x - mean(x))^2)`
* `a = mean(y) - b * mean(x)`

### Correlation
* Correlation Coefficient r
  * -1 to 1
  * r > 0: positive relationship between x,y
  * r < 0: negative relationship
  * r = 0 no relationship
  * abs(r) -> 1 as relationship becomes increasingly linear
```R
r = sum( (x - mean(x)) * (y - mean(y)) ) /
    sqrt( sum((x - mean(x))^2) * sum((y - mean(y))^2))
}
```



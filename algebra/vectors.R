# vectors

magnitude <- function(x){
  sqrt( sum(x^2))
}

scalar1 <- function(x){

  m <- magnitude(x)
  if ( m == 0 ){
    return(NaN)
  } else{
    x / m
  }
}

x <- c (1, 7, 5)
magnitude(x)
magnitude(scalar1(x))

y <- c( -1, +1)
magnitude(y)
scalar1(y)

magnitude( c( -0.221, 7.437))
magnitude( c( 8.813, -1.331, -6.247))

scalar1( c(5.581, -2.136) )
scalar1( c(1.996, 3.108, -4.554))

## Inner Products (Dot Products)
# v * w = ||v|| * ||w|| * cos(teta)
# or v1 * w1 + v2 * w2 + ... + vn * wn
dot_product <- function (x, y){
  sum(x * y)
}
dot_product(c(1,2,-1), c(3,1,0) )

angle <- function(x, y, is.degree = FALSE){

  angle.rad <- acos( dot_product(x, y) / (magnitude(x) * magnitude(y)))
  if (is.degree){
    angle.rad * 180 / pi
  } else{
    angle.rad
  }

}
angle(c(1,2,-1), c(3,1,0))
angle(c(1,2,-1), c(3,1,0) , is.degree = T)

# Cauchy- Schwarz Inequality
# | v * w | <= ||v|| * ||w||

# Parallel

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

# quiz
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

dot_product <- function (x, y){
  sum(x * y)
}

# quiz
dot_product(c(1,2,-1), c(3,1,0) )

angle <- function(x, y, is.degree = FALSE){

  angle.rad <- acos( dot_product(x, y) / (magnitude(x) * magnitude(y)))
  if (is.degree){
    angle.rad * 180 / pi
  } else{
    angle.rad
  }

}

# quiz
angle(c(1,2,-1), c(3,1,0))
angle(c(1,2,-1), c(3,1,0) , is.degree = T)


is.parallel_vectors <- function(x, y){

  if (magnitude(x) == 0){
    return(TRUE)
  } else if (magnitude(y) == 0){
    return(TRUE)
  } else {
    return( angle(x,y, is.degree = TRUE) == 0 ||
              angle(x,y, is.degree = TRUE) == 180)
  }
}

is.orthogonal_vectors <- function(x, y){

  if (magnitude(x) == 0){
    return(TRUE)
  } else if (magnitude(y) == 0){
    return(TRUE)
  } else {
    return( all.equal( dot_product(v, w), 0) == TRUE )
  }
}

# quiz
v <- c(-7.579, -7.88)
w <- c(22.737, 23.64)
is.parallel_vectors(v,w)
is.orthogonal_vectors(v,w)

v <- c(-2.029, 9.97, 4.172)
w <- c(-9.231, -6.639, -7.245)
is.parallel_vectors(v,w)
is.orthogonal_vectors(v,w)

v <- c(-2.328, -7.284, -1.214)
w <- c(-1.821, 1.072, -2.94)
is.parallel_vectors(v,w)
is.orthogonal_vectors(v,w)

v <- c(2.118, 4.827)
w <- c(0, 0)
is.parallel_vectors(v,w)
is.orthogonal_vectors(v,w)



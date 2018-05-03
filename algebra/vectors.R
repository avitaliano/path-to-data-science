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

  angle <- round(dot_product(x, y) / (magnitude(x) * magnitude(y)), digits = 5)

  angle.rad <- acos(angle)

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

## projection

projection <- function(v, b){

  scalar_b <- scalar1(b)
  return(dot_product(scalar_b, v) * scalar_b)
}

orthogonal_component <- function(v, b){

  v_projected <- projection(v, b)
  return( v - v_projected )
}

# quiz
v <- c( 3.039, 1.879 )
b <- c( 0.825, 2.036 )
v_parallel <- projection(v, b)
round(v_parallel, digits = 3)

v <- c( -9.88, -3.264, -8.159 )
b <- c( -2.155, -9.353, -9.473 )
v_parallel <- projection(v, b)
v_orthogonal <- orthogonal_component(v, b)
round(v_parallel, digits = 3)
round(v_orthogonal, digits = 3)

v <- c( 3.009, -6.172, 3.692, -2.51 )
b <- c( 6.404, -9.144, 2.759, 8.718 )
v_parallel <- projection(v, b)
v_orthogonal <- orthogonal_component(v, b)
round(v_parallel, digits = 3)
round(v_orthogonal, digits = 3)


# Cross Product
cross_product <- function(v, w){

  if ( length(v) != 3)
    stop("v has not 3 dimensions")
  if ( length(w) != 3)
    stop("w has not 3 dimensions")

  x1 <- v[1]
  y1 <- v[2]
  z1 <- v[3]

  x2 <- w[1]
  y2 <- w[2]
  z2 <- w[3]

  return( c( y1 * z2 - y2 * z1,
             -(x1 * z2 - x2 * z1),
             x1 * y2 - x2 * y1))
}

magnitude_cross_product <- function(v,w){

  theta <- angle(v,w)
  return(magnitude(v) * magnitude(w) * sin(theta))
}

# quiz
v <- c(8.462, 7.893, -8.187)
w <- c(6.984, -5.975, 4.778)
round(cross_product(v,w), digits = 3)
v <- c(-8.987, -9.838, 5.031)
w <- c( -4.268, -1.861, -8.866)
round(magnitude_cross_product(v,w), digits = 3)
v <- c(1.5, 9.547, 3.691)
w <- c(-6.007, 0.124, 5.772)
round(magnitude_cross_product(v,w)/2, digits = 3)

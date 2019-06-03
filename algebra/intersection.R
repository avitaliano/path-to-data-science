# intersecion 2d lines

as.line <- function(normal_vector, constant){
  return( list(normal_vector = normal_vector, constant = constant) )
}

is.parallel_lines <- function(l1, l2){

  # 2 lines are parallel if their normal vectors are parallel
  v1 <- l1$normal_vector
  v2 <- l2$normal_vector

  return( is.parallel_vectors(v1, v2))

}

is.equal_lines <- function(l1, l2){

  # 2 parallel lines are equal if only if the vector
  # connection one point on each line is orthogonal to the lines
  # normal vectors

  # get point from l1
  p1 <- c( l1$constant / l1$normal_vector[[1]], 0 )  # (k/A, 0)
    # get point from l2
  p2 <- c( l2$constant / l2$normal_vector[[1]], 0)  # (k/A, 0)

  # direction vector
  d <- c( p1[[0]] - p2 [[0]], 0 )




}

l1 <- as.line(normal_vector = c(10,2), 3)
l2 <- as.line(normal_vector = c(20,2), 2)
is.parallel_lines(l1, l2)

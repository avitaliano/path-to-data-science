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

l1 <- as.line(c(10,2), 3)
l2 <- as.line(c(20,4), 4)
is.parallel_lines(l1, l2)

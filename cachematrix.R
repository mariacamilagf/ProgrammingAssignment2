## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
  get <- function() x
  set_inverse <- function(inverse) a <<- inverse
  get_inverse <- function() a
  list(set = set,
       get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  a <- x$get_inverse()
  if (!is.null(a)) {
    message("cached data")
    return(a)
  }
  data <- x$get()
  a <- solve(data, ...)
  x$set_inverse(a)
  a
}

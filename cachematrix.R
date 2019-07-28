## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setInverse <- function(solveMatrix) inverse <<- solveMatrix
  getInverse <- function() inverse
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



## Write a short comment describing this function
## This function computes the inverse of the matrix returned by the makeCacheMatrix 
## above. If the mean has already been calculated, it skips the computation and 
## returns the inverse from the cache

cacheSolve <- function(x, ...) {
  inverse <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setInverse(inverse)
  inverse
}

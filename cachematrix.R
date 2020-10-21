## This function creates a special "matrix" object that can cache its inverse.
## And computes the inverse of the special "matrix" 

makeCacheMatrix <- function(x = matrix()) {
  cachedInverse <- NULL
  set <- function(newMatrix) {
    x <<- newMatrix
    cachedInverse <<- NULL
  }
  get <- function() x 
  getInverse <- function(...) {
    if(is.null(cachedInverse)) {
      message("doing the heavy calculations!")
      cachedInverse <<- solve(x, ...)
    }
    cachedInverse
  }
  list(set = set, get = get, getInverse = getInverse)
}

## If the inverse has already been calculated, 
## then the cachesolve should retrieve the inverse from the cache.
## If the matrix has been changed, it will re-solve and cache the new answer 

cacheSolve <- function(x, ...) {
        x$getInverse(...)
}
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cachedInverse <- NULL
  set <- function(newMatrix) {
    x <<- newMatrix
    cachedInverse <<- NULL
  }
  get <- function() x 
  getInverse <- function() {
    if(is.null(cachedInverse)) {
      message("doing the heavy calculations!")
      cachedInverse <<- solve(x)
    }
    cachedInverse
  }
  list(set = set, get = get, getInverse = getInverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        x$getInverse()
}

# makeVector <- function(x = numeric()) {
#   m <- NULL
#   set <- function(y) {
#     x <<- y
#     m <<- NULL
#   }
#   get <- function() x
#   setmean <- function(mean) m <<- mean
#   getmean <- function() m
#   list(set = set, get = get,
#        setmean = setmean,
#        getmean = getmean)
# }
# 
# cachemean <- function(x, ...) {
#   m <- x$getmean()
#   if(!is.null(m)) {
#     message("getting cached data")
#     return(m)
#   }
#   data <- x$get()
#   m <- mean(data, ...)
#   x$setmean(m)
#   m
# }
# 
# makeVectorBetterVersion <- function(x = numeric()) {
#   mean <- NULL
#   set <- function(y) {
#     x <<- y
#     mean <<- NULL
#   }
#   get <- function() x
#   #setmean <- function(mean) mean <<- mean   # setMean is bad, get rid of it
#   getMean <- function(...) {
#     if(is.null(mean)) {
#       message("doing the heavy calculations!")
#       mean <<- mean(x, ...)
#     }
#     mean
#   }
#   list(set = set, get = get,
#        getMean = getMean)
# }


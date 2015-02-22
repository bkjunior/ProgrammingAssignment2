## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creates the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  invm <- NULL
  set <- function(y) {
    x <<- y
    invm <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) invm <<- inverse
  getinv <- function() invm
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## Checking for cache and if not caches the Matrix 
cacheSolve <- function(x, ...) {
  invm <- x$getinv()
  if(!is.null(invm)) {
    message("getting cached data")
    return(invm)
  }
  cachematrix <- x$get()
  invm <- solve(cachematrix)
  x$setinv(invm)
  invm  
}

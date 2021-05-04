## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
     i <- NULL
     set <- function(y) {
          x <<- y
          i <<- NULL
     }
     get <- function() x
     setinv <- function(my_inv) i <<- my_inv
     getinv <- function() i
     list(set = set, get = get,
          setinv = setinv,
          getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     i <- x$getinv()K
     if(!is.null(i)) {
          message("getting cached data")
          return(i)
     }
     my_mat <- x$get()
     m <- solve(my_mat, ...)
     x$setinv(m)
     m
}


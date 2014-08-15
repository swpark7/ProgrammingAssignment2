## Put comments here that give an overall description of what your
## functions do

## Creat 4 sub functions for CacheMatrix
makeCacheMatrix <- function(x) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinv <- function(inv) i <<- inv
    getinv <- function() i
    list (set=set, get=get, setinv=setinv, getinv=getinv)
}

## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
    i <- x$getinv()
    if (!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data)
    x$setinv(i)
    i
}

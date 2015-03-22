## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


# makeCacheMatrix creates a list containing a function to:
## set and get the value of the matrix
## set and get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set=set, 
        get=get, 
        setinverse=setinverse,
        getinverse=getinverse)
}



## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setinverse(m)
    m
}

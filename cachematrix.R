## Based on makeVector()/cachemean example
## usage: 
## makeCacheMatrix(x):  x = a square, invertible matrix. Creates a list of functions 
##   which store and retrieve a matrix and it's inverse
## cacheSolve (y): y = an object created using makeCacheMatrix(matrix). Solves, caches
##   and returns the inverse of matrix x.  If the inverse is cached then the 
##   the cached inverse is returned instead of recalculating

## store matrix and returen an object containin a list of functions: 
##   set input matrix, get input matrix, 
##   setinverse and getinverse  

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function()  x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(
        set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse
    )
}

## Solve and cache matrix inverse or retrieve if already cached
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}


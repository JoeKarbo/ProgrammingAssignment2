
# This function will find and store the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(f){
    x <<- f
    i <<- NULL
    # creates a function to find the inverse of a matrix
    # and sets the value of the matrix
    
  }
    get <- function() x
    # get the value of the matrix
  
    setinverse <- function(inverse) i <<- 
    inverse
    # set the value of the inverse
  
    getinverse <- function() i
    # get the value of the inverse
  
    list(set = set, get = get, setinverse = setinverse,
        getinverse = getinverse)
    # hold the inverse in a "matrix" object
  
}


## The following function will find the inverse of the "special" matrix object
## from above

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getInverse()
    if(!is.null(i)) {  # if the inverse has already been calculated
        message("getting cahced data") # it gets the inverse from the cache
        return(i)
    }
    
    data <- x$get() # get the matrix
    i <- solve(data, ...) # calculate the inverse
    x$setInverse(i) 
    i # return the inverse
  
}

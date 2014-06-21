## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## A function where X and M are global variable
## Function returns 4 different functions which can be called from other function for application
## real operation defined in cacheSolve function


makeCacheMatrix <- function(x = matrix()) {
  
## set m as NULL  
  m <- NULL
  
## Set assigns arg to global vax x & NULL to m
    sets <- function(y) {
      x <<- y
      m <<- NULL
    }
## get just get global var x
    gets <- function() x

## setmean assign arg to global var m
    setmeans <- function(solve) m <<- solve

## getmean just gets global m
    getmeans <- function() m


## output 
list(sets = sets, gets = gets,
         setmeans = setmeans,
         getmeans = getmeans)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
## if m value is not null - say getting from cached
## else calculate inverted value
    
    m <- x$getmeans()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$gets()
    m <- solve(data, ...)
    x$setmeans(m)
      m
  
}

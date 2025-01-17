## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## function creates matrix and caches its inverse
makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
 set <- function(y) {
  x <<- y
  m <<- NULL        
 }
 get <- function() x
 setinverse <- function(inverse) m <<- mean                                            
 getinverse <- function(inverse) m                                                         
list( set = set, get = get, 
                                                                                                 
      setinverse = setinverse,                                                             
      getinverse = getinverse)                                                                                                     
}
## Write a short comment describing this function s
##function returns the inverse from previous function makeCachMatrix
cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
   ## Returns a matrix that is the inverse of 'x'
}

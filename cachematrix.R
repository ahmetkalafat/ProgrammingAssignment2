## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


#This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(xMatrix=matrix()) {   
  m <- NULL                                           
  set <- function(y) {                                
    xMatrix <<- y
    m <<- NULL                                        
  }
  get<-function() x                                   
  setInv <- function(solved) m <<- solved             
  getInv <- function() m                              
  list(set = set, get = get,                          
       setInv = setInv,
       getInv = getInv) }
#This function computes the inverse of the matrix returned by makeCacheMatrix

cacheSolve <- function(InputMatrix, ...) {  
  m <- InputMatrix$getInv()                 
  if(!is.null(m)) {                         
    message("getting cached data")          
    return(m)                               
  }
  message("calculating Inverse")        
  data <- InputMatrix$get()                 
  m <- solve(data, ...)                     
  InputMatrix$setInv(m)                     
  return(m) 
  }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
}

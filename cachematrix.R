## makeCacheMatrix ==> computes inverse of matrix and saves result in cache 

## example matrix:
m <- rbind(c(1:2),c(3,4))

makeCacheMatrix <- function(x = matrix()) { 
      ## check if supplied value is a matrix. If not display warning.
      if (!is.matrix(m)) {
        print("Please provide matrix!")
      }
          
      mi <<- solve(m) 
      return(mi)
  } 

makeCacheMatrix(m)

cacheSolve <- function(x = makeCacheMatrix(), ...) { 
        mtx <- makeCacheMatrix(m)
        mcached <- solve(as.matrix(...))
        ##if input matrix and cached matrix are identical, return cached value
        if (identical(mtx,mcached)) {
              makeCacheMatrix(m)
        }
        mcached
        
  ##Return a matrix that is the inverse of 'x' 
} 


cacheSolve(makeCacheMatrix(m),m)

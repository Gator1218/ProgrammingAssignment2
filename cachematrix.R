## Functions makeCacheMatrix and cachSolve calculate the inverse of a matrix 
## and store it in cache so that it does not need to be re-solved later.

## create variables for original matrix and inverse matrix
OrigMatrix <- NULL
InvMatrix <- NULL
Arb <- matrix(c(1, 5, 2.3, 2.1),2,2) ##arbitrary matrix to uses as default

##this function calculates and caches the inverse of the passed matrix
makeCacheMatrix <- function(x) {
      ##create inverse matrix
            InvMatrix <- solve(x)
      ##cache orig and inv in global environment
            OrigMatrix <<- x
            InvMatrix <<- InvMatrix
      ##return inverse matrix
            InvMatrix
}
## function below checks if the inverse matrix is already stored in memory and
## calls makeCacheMatrix if it is not already cached
cacheSolve <- function(x = Arb) {
      ## return inverse matrix from memory if it is already cached
      if(x==OrigMatrix && (!is.null(InvMatrix))) {
            message ("getting cached data")
            return (InvMatrix)
      }
      ## otherwise call makeCacheMatrix to calculate the inverse
      makeCacheMatrix(x)
}

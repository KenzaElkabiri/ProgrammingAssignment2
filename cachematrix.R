
#The first function will create a matrix that can cash its inverse

makeCacheMatrix <- function(x = matrix()) {
   I <- NULL
   #set the matrix
   set <- function(y) {
      x <<- y
      I <<- NULL
     }
   # get the matrix
   get <- function() x

   # inverse of the matrix
   setsolve <- function (solve) I <<- solve

   # return the matrix
   getsolve <- function () m 

   list (set=set, get=get, 
         setsolve=setsolve,
         getsolve=getsolve)
}


# the second function computes the inverse of the matrix created above

cacheSolve <- function(x, ...) {
  I <- x$get()
  if(is.null(I)) {
        message("getting inverse matrix")
   }
 data <- x$get()

 # calculation of the inverse of the matrix using multiplication
  I <- solve(data,...)

  # set the inverse to object
  x$setsolve()

  # return the matrix
I
}

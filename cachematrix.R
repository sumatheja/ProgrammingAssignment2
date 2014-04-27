## Put comments here that give an overall description of what your
## functions do

## this function gives set,get and invert functionality 

makeCacheMatrix <- function(x = matrix()) {

    k<-NULL
    ##function to set the matrix value
    set<- function(y)
    {
        x<<-y
        k<<-NULL
    }
    
    ##function to retirieve the fmatrix value
    get<-function() x
    
    ##function to set the matrix inverse value
    setInverse<-function(inverse) m<<-inverse
    
    ##function to get the matrix inverse value 
    getInverse<-function() m

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getInverse()
        if(!is.null(m))
        {
        	message("getting cached inverse matrix")
        	return(m)
        }
        matrixData<-x$get()
        m<-solve(matrixData)
        x$setInverse(m)
        m
}

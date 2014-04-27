## Put comments here that give an overall description of what your
## functions do

## this function gives set,get and invert functionality 

makeCacheMatrix <- function(x = matrix()) {

    k<-NULL
    set<- function(y)
    {
        x<<-y
        k<<-NULL
    }
    
    get<-function() x
    
    setInverse<-function(inverse) k<<-inverse
    getInverse<-function()
    {
            message("getting cached inverse matrix")
            k
    }
    
    list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)


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

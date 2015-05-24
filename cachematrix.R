## Put comments here that give an overall description of what your
## functions do

## this function will read MATRIX data from command line and create the MATRIX

makeCacheMatrix <- function(x = matrix()) {
       local_m <- NULL                                         
        set <- function(y) {                                    
                cache_x <<- y                                   
                cache_m <<- NULL                                    
        }
        get <- function() cache_x
        set_cache_m <- function(local_m) cache_m <<- local_m          
        get_cache_m <- function() cache_m 
        list(set = set, get = get,
             set_cache_m = set_cache_m,
             get_cache_m = get_cache_m)
}




## this function will create a Inverse matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                 

       	in_matrix <- x$get()                                         
        out_matrix <- solve(in_matrix)   
	out_matrix                  
}

# TEsting...
# > test <- makeCacheMatrix()
# > test$set(matrix(c(1,2,3,4),2,2))
# > cacheSolve(test)

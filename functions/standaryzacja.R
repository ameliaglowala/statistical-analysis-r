standardise <- function(x) 
{
    z <- (x - mean(x)) / sd(x)
    return(z)
}
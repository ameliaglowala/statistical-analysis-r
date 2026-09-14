skewness <- function(x)
{
    z <- (x - mean(x)) / sd(x) #wzór
    return(mean(z^3)) #wartość oczekiwana z wzoru 
}


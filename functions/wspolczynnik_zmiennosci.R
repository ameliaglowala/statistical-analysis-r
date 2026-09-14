coef_of_variation <- function(x) 
{
    cv <- sd(x) / abs(mean(x))
    return(cv)
}
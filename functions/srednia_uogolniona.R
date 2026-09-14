power_mean <- function(x, p) 
{
    if (p == 0) 
    {
      return(exp(mean(log(x)))) #gdy p=0 korzystamy ze wzoru na średnią geometryczną
    } else 
    {
      n <- length(x)
      return((sum(x^p) / n)^(1/p)) #gdy p=/=0 korzystamy z ogólnego wzoru
    }
}
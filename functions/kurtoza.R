kurtosis <- function(x, excess = TRUE) {
    z <- (x - mean(x)) / sd(x) #wzór
    k4 <- mean(z^4) #wartość oczekiwana dla k=4
    if (excess) {
      return(k4 - 3) #pomniejszenie o kurtozę rozkładu normalnego
    } else {
      return(k4)
    }
}
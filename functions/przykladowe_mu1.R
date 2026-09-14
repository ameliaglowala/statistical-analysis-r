ztest_power <- function(mu1, n, mu0, sigma, alpha, alternative) {
    region <- ztest_crit_region(alpha, alternative)
    przesuniecie <- (mu1 - mu0) / (sigma / sqrt(n))
    #Z ma rozkład N(przesuniecie, 1)
    
    return(sapply(przesuniecie, function(x) {
        p <- 0
        for (i in seq(1, length(region), by = 2)) {
            p <- p + (pnorm(region[i+1], mean = x, sd = 1) - pnorm(region[i], mean = x, sd = 1))
        }
        return(p)
    }))
}
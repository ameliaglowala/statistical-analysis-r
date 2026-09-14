ztest <- function(x, mu0, sigma, alpha, alternative) {
    n <- length(x)
    x_srednia <- mean(x)
    
    statystyka <- (x_srednia - mu0) / (sigma / sqrt(n))
    
    region <- ztest_crit_region(alpha, alternative)
    
    czy_w_krytycznym <- FALSE
    for (i in seq(1, length(region), by = 2)) {
        if (statystyka >= region[i] && statystyka <= region[i+1]) {
            czy_w_krytycznym <- TRUE
            break
        }
    }
    
    p_value <- switch(alternative,
                      "two.sided" = 2 * (1 - pnorm(abs(statystyka))),
                      "less"      = pnorm(statystyka),
                      "greater"   = 1 - pnorm(statystyka)
    )
    
    return(list(
        statistic = statystyka,
        region = region,
        result = czy_w_krytycznym,
        p_value = p_value
    ))
}
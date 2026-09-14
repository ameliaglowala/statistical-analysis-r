ztest_pvalue <- function(stat, alternative) {
    p_value <- switch(alternative,
                      "two.sided" = 2 * (1 - pnorm(abs(stat))), 
                      "less"      = pnorm(stat),               
                      "greater"   = 1 - pnorm(stat)            
    )
    return(p_value)
}
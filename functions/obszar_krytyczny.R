ztest_crit_region <- function(alpha, alternative) {
    if (alternative == "two.sided") {
        dolny <- qnorm(alpha / 2)
        gorny <- qnorm(1 - alpha / 2)
        return(c(-Inf, dolny, gorny, Inf))
        
    } else if (alternative == "less") {
        krytyczny <- qnorm(alpha)
        return(c(-Inf, krytyczny))
        
    } else if (alternative == "greater") {
        krytyczny <- qnorm(1 - alpha)
        return(c(krytyczny, Inf))
        
    } else {
        stop("Niepoprawny argument 'alternative'. Wybierz: 'two.sided', 'less' lub 'greater'.")
    }
}
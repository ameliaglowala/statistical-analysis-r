ztest_plot_power <- function(n, mu0, sigma, alpha, alternative) 
{
    
    se       <- sigma / sqrt(n)
    mu_range <- seq(mu0 - 4 * se, mu0 + 4 * se, length.out = 500)
    powers   <- sapply(mu_range, ztest_power,
                       n = n, mu0 = mu0, sigma = sigma,
                       alpha = alpha, alternative = alternative)
    
    plot(mu_range, powers,
         type  = "n",
         ylim  = c(0, 1),
         xlab  = "Wartość oczekiwana rozkładu",
         ylab  = "Prawdopodobieństwo odrzucenia H0",
         main  = paste0("alpha = ", alpha,
                        ",  n = ", n,
                        ",  sigma = ", round(sigma, 2),
                        "\nHipoteza alternatywna: '", alternative, "'"),
         yaxt  = "n",
         panel.first = grid())
    
    polygon(c(mu_range, rev(mu_range)),
            c(powers, rep(0, length(powers))),
            col    = rgb(242, 142, 109, maxColorValue = 255, alpha = 127),
            border = NA)
    
    lines(mu_range, powers, lwd = 2)
    
    abline(v = mu0,   col = "lightblue", lwd = 2)
    abline(h = alpha, col = "red", lwd = 2)
    abline(h = 1, lty = 2, col = "grey")
    
    axis(2,
         at     = seq(0, 1, 0.25),
         labels = c("0%", "25%", "50%", "75%", "100%"),
         las    = 1)
}
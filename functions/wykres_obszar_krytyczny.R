ztest_plot_region <- function(region) {
    #wykres rozkładu normalnego
    curve(dnorm(x), from = -4, to = 4, lwd = 2, main = "obszar krytyczny", ylab = "gęstość")
    
    for (i in seq(1, length(region), by = 2)) {
        dolny <- region[i]
        gorny <- region[i + 1]
        
        plot_dolny <- max(dolny, -4)
        plot_gorny <- min(gorny, 4)
        
        x_polygon <- seq(plot_dolny, plot_gorny, length.out = 100)
        y_polygon <- dnorm(x_polygon)
        
        polygon(c(plot_dolny, x_polygon, plot_gorny), c(0, y_polygon, 0), col = "darkred")
    }
}
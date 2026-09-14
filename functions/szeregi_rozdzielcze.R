freq_distr <- function(x, k = NULL, extend = NULL) # k-licza klas, extend-o ile powiekszyć krańce przedziałów
{
    if (is.null(k)) # przypadek dyskretny
    {
        unikalne_wartosci <- sort(unique(x))
        liczba <- as.vector(table(x)) # liczba wystąpień podana w wektorze
        
        return(list(
            endpoints = numeric(0),
            midpoints = unikalne_wartosci,
            counts = liczba,
            lengths = numeric(0)
        ))
    }
    
    if (is.null(extend))
    {
        dk <- (max(x) - min(x)) / k
        extend <- dk / 2
    }
    
    x_min <- min(x) - extend
    x_max <- max(x) + extend
    dlugosc_przedzialu <- (x_max - x_min) / k
    
    krance_przedzialow <- seq(x_min, x_max, length.out = k + 1)
    
    liczba_obserwacji <- as.vector(
        table(cut(x, breaks = krance_przedzialow, include.lowest = TRUE)) # include.lowest = TRUE zapewnia, że wartość minimalna wpadnie do pierwszej klasy
    )
    
    srodki_przedzialow <- (krance_przedzialow[1:k] + krance_przedzialow[2:(k+1)]) / 2
    
    return(list(
        endpoints = krance_przedzialow,
        midpoints = srodki_przedzialow,
        counts = liczba_obserwacji,
        lengths = dlugosc_przedzialu
    ))
}
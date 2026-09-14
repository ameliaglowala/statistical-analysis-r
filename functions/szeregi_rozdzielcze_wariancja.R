freqdistr_var <- function(fd)
{
    srodki <- fd$midpoints
    liczebnosc <- fd$counts
    w <- liczebnosc/sum(liczebnosc)
    srednia <- sum(w*srodki)
    wynik <- sum(w*(srodki^2))-(srednia^2)
    return(wynik)
}
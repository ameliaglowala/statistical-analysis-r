freqdistr_mean <- function(fd)
{
    srodki <- fd$midpoints
    liczebnosc <- fd$counts
    w <- liczebnosc/sum(liczebnosc)
    return(sum(w*srodki))
}
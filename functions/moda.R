mode_statistic <- function(x, discrete = TRUE,...) #moda to inaczej dominanta
    #discrete- dla TRUE dyskretne
    #...- mogą być na przykład: bw (szerokość pasma), n (liczba punktów)
{
    if (discrete) #model dyskretny 
    {
      liczebnosc <- table(x) #tabela liczebności
      max_liczba <- max(liczebnosc)  #maksymalna liczba wystąpień
      moda <- liczebnosc[liczebnosc == max_liczba] #ile wartości występuje z tą maksymalną częstotliwością
    
      if (length(moda) > 1) {
        return(NA)
      } else {
        return(as.numeric(names(moda))) #konwertowanie z etykiety tabeli na typ liczbowy
      }
    } else {#model ciągły
      kde <- density(x, ...) #gęstość 
      moda2 <- kde$x[which.max(kde$y)] #wartość x, dla której gęstość (y) jest maksymalna
      return(moda2)
    }
}
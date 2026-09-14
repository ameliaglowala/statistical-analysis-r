variance <- function(x, adjusted = TRUE, ex = NULL) #TRUE oraz NULL w definicji funkcji to wartości domyślne
{
    n <- length(x)
    if (!is.null(ex)) #sprawdzenie, czy jest znana wartość oczekiwana (ex)
    {
      wynik <- sum((x - ex)^2) / n
    } else 
    {
      kwadrat_różnicy <- sum((x - mean(x))^2)
      if (adjusted) 
      {
        wynik <- kwadrat_różnicy / (n - 1) #estymator skorygowany (nieobciążony) 
      } else 
      {
        wynik <- kwadrat_różnicy / n #estymator klasyczny (obciążony)
      }
    }
  
    return(wynik)
}
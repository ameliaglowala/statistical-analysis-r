ci_ex_norm <- function(x, alpha, sigma = NULL) { #sigma znane to odchylenie standardowe rozkładu, jak NULL to nie znamy
    n <- length(x)
    srednia <- mean(x)
  
    if (!is.null(sigma)) { #korzystamy z rozkładu normalnego N(0, 1)
    
      z_kwantyl <- qnorm(1 - alpha / 2)
      margines_bledu <- z_kwantyl * (sigma / sqrt(n))
    
    } else { # korzystamy z rozkładu t-studenta
      sd_proby <- sd(x) #sd() oblicza nieobciążony estymator odchylenia standardowego
      t_kwantyl <- qt(1 - alpha / 2, df = n - 1)
    
      margines_bledu <- t_kwantyl * (sd_proby / sqrt(n))
    }
    dolna_granica <- srednia - margines_bledu
    gorna_granica <- srednia + margines_bledu
    return(c(dolna_granica, gorna_granica))
}
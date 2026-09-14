ci_var_norm <- function(x, alpha){
    n <- length(x)
    df <- n - 1
    sd_proby <- sd(x)
  
    c1_kwantyl <- qchisq(alpha/2, df)
    c2_kwantyl <- qchisq(1 - alpha/2, df)
  
    dolna_granica <- (n - 1)*sd_proby^2/c2_kwantyl
    gorna_granica <- (n - 1)*sd_proby^2/c1_kwantyl
    return(c(dolna_granica, gorna_granica))
}
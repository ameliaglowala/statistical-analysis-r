order_statistics <- function(x, indices = NULL)
{
    x_order <- sort(x)
    if (is.null(indices)) 
    {
      return(x_order)
    }
    return(x_order[indices])
}
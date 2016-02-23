#' Return 0 or 1
#' 
#' @author Markus Huff
#' 
#' @export
#' 
return_0_1 <- function(n=4,p_t0=0.5)
{
  tmp <-
    c(rbinom(1, 1, p_t0),
      rbinom(1, 1, (0.5*n - p_t0) / (n-1)),
      rbinom(1, 1, (0.5*n - p_t0) / (n-1)),
      rbinom(1, 1, (0.5*n - p_t0) / (n-1)))
  return(tmp)
}

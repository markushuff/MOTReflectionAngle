#' Return 0 or 1
#' 
#' 
return_0_1 <- function(n)
{
  tmp <- rbinom(n,1,0.5)
  return(tmp)
}

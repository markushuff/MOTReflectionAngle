#' Create dataframe
#' 
#' @author Markus Huff
#' 
#' 
create_dataframe <- function(num_rep,angles)
{
  # initialize dataframe
  for(i in 1:num_rep)
  {
    dat <- crossing(num_rep=1:num_rep,angles=c(0,10,20,30),t0=return_0_1(),t1=return_0_1(),t2=return_0_1(),t3=return_0_1())
  }
  return(dat)
}


# max trials: 120
# if angle == 0, dann p(t0) == p(t1) == p(t2) == p(t3)
# if angle > 0 & angle < 50, dann p(t0) < (p(t1) == p(t2) == p(t3)) ; wo die "Nullschwelle liegt, wissen wir nicht
# if angle > 50, dann p(t0)== p(t1) == p(t2) == p(t3) ; 50 ist ein oberer Schätzer, kann zwischen 30 und 50 liegen

# Procedure: 
# 1. 8 trials exercise
# 2. 15 trials angle == 0
# 3. Beginn staircase
# 4. 5 trials (mean_performance), 
if (mean_performance >= 2.5)
{
  
}

n <- 20
mean_crit <- 2.5

for(i in 1:n)
{
  mean_tmp <- 
    dat_tmp <- data.frame(angle=0,)
}
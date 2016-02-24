#' Create dataframe
#' 
#' @author Markus Huff
#' 
#' @param n Number of target items (not implemented yet, n = 4)
#' @param min_num_correct Minimum number of correct tracked objects
#' @param num_rep Number of repetitions / simulations
#' @param angles Reflection angles (not implemented yet)
#' @param p_t0 Probability of selecting target 1 (singleton) 
#' @description This function creates a dataframe with the simulated MOT performance of n targets.   
#' 
#' @export

create_dataframe <- function(n,min_num_correct,num_rep, angles,p_t0)
{
  # initialize dataframe
  for (i in 1:num_rep)
  {
    dat <- crossing(num_rep = 1:num_rep,
                    angles = angles)
    counter <- 0
    dat_tmp <- data.frame()
    while (counter < length(dat$num_rep))
    {
      tmp <- return_0_1(n,p_t0)
#      print(tmp)
      if (sum(tmp) >= min_num_correct)
      {
        dat_tmp <- rbind(dat_tmp, tmp)
        counter <- counter + 1
      }
      else
        dat_tmp <- dat_tmp
      
    }
    names(dat_tmp) <- c("t0", "t1", "t2", "t3")
    dat <- cbind(dat, dat_tmp)
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
# if (mean_performance >= 2.5)
# {
#   
# }
# 
# n <- 20
# mean_crit <- 2.5
# 
# for(i in 1:n)
# {
#   mean_tmp <- 
#     dat_tmp <- data.frame(angle=0,)
# }
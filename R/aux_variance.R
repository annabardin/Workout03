# AUX VARIANCE
# Private aux function aux_variance
# Description: returns variance of binomial exp.
# Input: prob (numeric value)
# Returns: variance
aux_variance <- function(trials, prob){
  return((trials*prob*(1-prob)))
}

# AUX MODE
# Private aux function aux_mode
# Description: returns mode of binomial exp.
# Input: trials (numeric value), prob (numeric value)
# Returns: mode
aux_mode <- function(trials, prob){
  return(floor(trials*prob+prob))
}

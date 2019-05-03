# CHECK TRIALS
# Description: private aux function check_trials
# Input: trials (numeric value, nonnegative integer)
# Output: return TRUE if valid, error if invalid

check_trials <- function(trials){
  if(!is.numeric(trials)){
    stop("invalid trials value")
  }
  if (trials>=0 & round(trials)==trials){
    return(TRUE)
  }
  else{
    stop("invalid trials value")
  }
}

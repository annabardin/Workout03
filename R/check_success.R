# CHECK SUCCESS
# Description: private aux function check_success
# Input: success (vector of nonnegative integers)
# Output: returns TRUE if valid, return error if invalid

check_success<- function(success,trials){
  trials <- rep(trials,length(success))
  for (i in 1:length(success)){
    if ((success[i])>=0 & round(success[i])==success[i]& success[i]<=trials[i]){
      return(TRUE)
    }
    else{
      stop("invalid success value")
    }
  }
}

#' @title Bin Probability
#' @description determines probability of getting a certain amount of successes or less in a certain amount of trials
#' @param success (number of successes)
#' @param trials (number of trials)
#' @param prob (probability of success, between 0 and 1)
#' @return binomical probability
#' @export
#' @examples
#' #Probability of 3 successes in 5 trials, with probability of success 0.5
#' bin_probability(success=2,trials=5,prob=0.5)

bin_probability <- function(success,trials,prob){
  if (!check_trials(trials)){
    stop("invalid trials value")
  }
  if(!check_prob(prob)){
    stop("invalid prob value")
  }
  if(!check_success(success,trials)){
    stop("invalid success value")
  }
  return(bin_choose(trials,success)*prob^(success)*(1-prob)^(trials-success))
}


#' @title Bin Variable
#' @description returns binomial random variable object
#' @param trial
#' @param prob
#' @return list with number of trials and probability of success
#' @export
#' @examples
#'#Build a binomial distribution
#'bin <- bin_variable(10,0.3)
#'# summarize
#'binsum <- summary(bin)
#'# print the summary
#'binsum

bin_variable <- function(trials,prob){
  check_trials(trials)
  check_prob(prob)
  x = list(trials,prob)
  class(x)<-"binvar"
  return(x)
}

print.binvar <- function(x){
  cat('"Binomial Variable"','\n\n')
  cat("Parameters",'\n')
  cat("- number of trials: ",x[[1]],'\n')
  cat("- prob of success: ",x[[2]],'\n')
}

summary.binvar <- function(x){
  x<-as.numeric(x)
  trials <- x[1]
  prob <- x[2]
  mean <- aux_mean(trials,prob)
  variance <- aux_variance(trials,prob)
  mode <- aux_mode(trials,prob)
  skewness <- aux_skewness(trials,prob)
  kurtosis <- aux_kurtosis(trials,prob)
  list <- list(trials,prob,mean,variance,mode,skewness,kurtosis)
  class(list) <- "summary.binvar"
  return(list)
}

print.summary.binvar <- function(x){
  cat('"Summary Binomial"','\n\n')
  cat("Parameters",'\n')
  cat("- number of trials: ",x[[1]],'\n')
  cat("- prob of success: ",x[[2]],'\n\n')
  cat("Measures",'\n')
  cat("- mean: ",x[[3]],'\n')
  cat("- variance: ",x[[4]],'\n')
  cat("- mode: ",x[[5]],'\n')
  cat("- skewness: ",x[[6]],'\n')
  cat("- kurtosis: ",x[[7]],'\n')
}

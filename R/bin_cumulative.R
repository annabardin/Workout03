#' @title Bin Cumulative
#' @description return data frame with probability distribution and cumulative probabilities
#' @param trials
#' @param prob
#' @return probability distribution and cumulative probabilities
#' @export
#' @examples
#'# Build a binomial distribution for 5 trials, prob =0.5
#'dis2 <- bin_cumulative(trials=5,prob=0.5)
#'dis2
#'#plot distribution
#'plot(dis2)

bin_cumulative <- function(trials,prob){
  df<- bin_distribution(trials,prob)
  cumulative2 <- rep(NA,trials+1)
  for (i in 1:(trials+1)){
    cumulative2[i] <- sum(df[1:i,2])
  }
  df$cumulative <- cumulative2
  class(df)<- c("bincum","data.frame")
  return(df)
}

#' @export
library(ggplot2)
plot.bincum <- function(df){
  ggplot(df, aes(x=df$success, y=df$cumulative))+geom_line()+xlab("Successes")+ylab("Probability")
}

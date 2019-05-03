#' @title Bin Distribution
#' @description return a data frame with the probability distribution
#' @param trials
#' @param probability
#' @return probability distribution
#' @export
#' @examples
#'#Build a binomial distribution with 5 trials, prob = 0.5
#'dis <- bin_distribution(trials=5,prob=0.5)
#'dis
#'#plot binomial distribution
#'plot(dis)

bin_distribution <- function(trials,prob){
  success <- 0:(trials)
  x <- (bin_probability(success,trials,prob))
  df <- data.frame(cbind("success"=(0:trials),"probability"=x))
  class(df)<- c("bindis","data.frame")
  return(df)
}

# PLOT BINDIS
plot.bindis <- function(df){
  library(ggplot2)
  ggplot(df,aes(x=df$success,y=df$probability))+geom_bar(stat="identity")+xlab("successes")+ylab("probability")

}

#' @title Bin Choose
#' @description calculates the number of combinations in which k successes can occur in n trials
#' @param k (success)
#' @param n (trials)
#' @return number of combinations
#' @export
#' @examples
#' #5 choose 3
#' bin_choose(n = 5, k = 2)
bin_choose <- function(n,k){
  for (i in 1:length(k)){
    if (k[i]>n){
      stop("k cannot be greater than n")
    }
  }
  n <- rep(n,length(k))
  return(factorial(n)/(factorial(k)*factorial(n-k)))
}




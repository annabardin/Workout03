# Binomial Distribution

This R package was created to implement functions for calculating the probabilities of a Binomial random variable and related calculations.  Moreover, the package contains built in functions to allow the user to visualize probability distributions and cumulative distributions.

Here is a list of functions included in the package: <br>
`bin_var()` <br>
`bin_choose()` <br>
`bin_probability()`<br>
`bin_distribution()`<br>
`bin_cumulative()` <br>
`bin_mean()`<br>
`bin_variance()`<br>
`bin_mode()`<br>
`bin_skewness()`<br>
`bin_kurtosis()`<br>

## Motivation:

This package was created as part of a class project to learn the basic elements of creating an R package.

## Getting Started Using the Package:

To use this package, simply download the zip file and manually install the package.  After installing the package, whenever you want to use it you can load it with the command library(binomial)

## Code Example:
```r
library(binomial)
# Here is how you should be able to invoke bin_choose
bin_choose(n = 5, k = 2)
bin_choose(5, 0)
bin_choose(5, 1:3)

# Here is how you should be able to invoke bin_probability():
# probability of getting 2 successes in 5 trials
# (assuming prob of success = 0.5)
bin_probability(success = 2, trials = 5, prob = 0.5)
# probabilities of getting 2 or less successes in 5 trials
# (assuming prob of success = 0.5)
bin_probability(success = 0:2, trials = 5, prob = 0.5)
# 55 heads in 100 tosses of a loaded coin with 45% chance of heads
bin_probability(success = 55, trials = 100, prob = 0.45)

# Here is how you should be able to invoke bin_distribution()
# binomial probability distribution
bin_distribution(trials = 5, prob = 0.5)
# plotting binomial probability distribution
dis1 <- bin_distribution(trials = 5, prob = 0.5)
plot(dis1)

# Here is how you should be able to invoke bin_cumulative()
# binomial cumulative distribution
bin_cumulative(trials = 5, prob = 0.5)
# plotting binomial cumulative distribution
dis2 <- bin_cumulative(trials = 5, prob = 0.5)
plot(dis2)
bin1 <- bin_variable(trials = 10, p = 0.3)
bin1
bin1 <- bin_variable(trials = 10, p = 0.3)
binsum1 <- summary(bin1)
binsum1

# Functions of measures
bin_mean(10,0.3)
bin_variance(10,0.3)
bin_mode(10,0.3)
bin_skewness(10,0.3)
bin_kurtosis(10,0.3)
```

## Credits:
https://www.gastonsanchez.com/packyourcode/

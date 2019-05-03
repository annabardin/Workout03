context("Check main binomial methods")

test_that("bin_choose works"{
  expect_equal(bin_choose(5,3),choose(5,3))
  expect_error(bin_choose(5))
  expect_error(bin_choose(5,3,3))
})

test_that("bin_probability works"{
  expect_equal(bin_probability(2,5,.5),0.3125)
  expect_equal(bin_probability(0:2,5,0.5),0.3125)
  expect_error(bin_probability(5,10,10))
})

test_that("bin_distribution works"{
  expect_equal(bin_distribution(5,.5)[1,2],0.03125)
  expect_error(bin_distribution(5))
  expect_error(bin_distribution(5,5,5))
})

test_that("bin_cumulative works"{
  expect_equal(bin_cumulative(5,.5)[1,2],0.03125)
  expect_error(bin_cumulative(5,5,5))
  expect_error(bin_cumulative(5))
})


library(testthat)
context("Aux Functions")

test_that("aux_mean works",{
  expect_equal(aux_mean(10,.3),3)
  expect_equal(aux_mean(0,1),0)
  expect_error(aux_mean(10))
  expect_error(aux_mean(10,10,10))
})

test_that("aux_variance works"{
  expect_equal(aux_variance(10,.3),2.1)
  expect_equal(aux_variance(2,1),0)
  expect_error(aux_variance(2))
  expect_error(aux_variance(3,3,3))
})

test_that("aux_mode works"{
  expect_equal(aux_mode(10,.3),3)
  expect_equal(aux_mode(2,1),3)
  expect_error(aux_mode(2))
  expect_error(aux_mode(3,3,3))
})

test_that("aux_skewness works"{
  expect_equal(aux_skewness(10,.3),0.2760262)
  expect_equal(aux_skewness(5,.3),0.39036)
  expect_error(aux_skewness(2))
  expect_error(aux_skewness(3,3,3))
})

test_that("aux_kurtosis works"{
  expect_equal(aux_kurtosis(10,.3),-0.1238095)
  expect_equal(aux_kurtosis(1,.3),-1.238095)
  expect_error(aux_kurtosis(2))
  expect_error(aux_kurtosis(3,3,3))
})

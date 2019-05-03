context("test checker functions")

test_that("check_prob works"{
  expect_true(check_prob(0))
  expect_true(check_prob(1))
  expect_error(-1)
  expect_error(2)
})

test_that("check_trials works"{
  expect_true(check_trials(0))
  expect_true(check_trials(5))
  expect_error(check_trials(-1))
  expect_error(check_trials(0.75))
})

test_that("check_success works"{
  expect_true(check_success(1,5))
  expect_error(check_success(5,1))
  expect_error(5)
  expect_error(-1,5)
})


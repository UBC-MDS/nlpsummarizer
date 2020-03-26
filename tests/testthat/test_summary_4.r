# This script tests the summary_4 function
# author: Vignesh Chandrasekaran
# date: Mar 6, 2020

context('summary_4')

#' This script will test the results of the summary_4 function.
#' summary_4 function takes in the textual data and count the
#' number of sentences, number of stop words and frequency of
#'' words in the data. It summarizes the data well.

#' Test for output type
testthat::test_that("Test that output is of type dataframe", {
  df = data.frame('text' = c('Today is a sunny day', 'We should go to a beach on this sunny day'))

  result = summary_4(df$text)
  class_name = (class(result))

  expect_equal(class_name, 'data.frame')
})

#' Test for perfection
testthat::test_that("Test that output is of type dataframe", {
  df = data.frame('text' = c('Today is a sunny day', 'We should go to a beach on this sunny day'))

  res = summary_4(df$text)
  a = res[1,1]
  b = res[1,2]

  expect_true((a == 2) & (b == 11))

})

#' Test for perfection
testthat::test_that("Test that output is of type dataframe", {
  df = data.frame('text' = c('Today is a sunny day', 'We should go to a beach on this sunny day', 'We have to run it is going to rain'))

  res = summary_4(df$text)
  a = res[1,1]
  b = res[1,2]

  expect_true((a == 3) & (b == 14))


})



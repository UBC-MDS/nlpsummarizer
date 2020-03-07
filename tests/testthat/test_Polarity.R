# This script tests the polarity function
# author: Karanpal Singh
# date: Mar 6, 2020

library(testthat)

context('Polarity')

#' This script will test the results of the polarity function.
#' Polarity function takes in the textual data and count the
#' number of positive and negative words in the data. This will
#' help in generating summary about text data.

#' Test for output type
test_that("Test that output is of type dataframe", {
  df = data.frame('text' = c('Today is a sunny day', 'We should go to a beach on this sunny day'))
  
  res = polarity(df$text)
  class_name = (class(res)[3])
  
  expect_true(class_name == 'data.frame')
})

#' Test for count
test_that("Test that output should be positive", {
  df = data.frame('text' = c('Today is a sunny day', 'We should go to a beach on this sunny day'))
  
  res = polarity(df$text)
  a = res[1,1]
  b = res[1,2]
  
  expect_true((a >= 0) & (b >=0))
})



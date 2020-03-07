# This script tests the summary_4 function
# author: Vignesh Chandrasekaran
# date: Mar 6, 2020

library(testthat)

context('summary_4')

#' This script will test the results of the summary_4 function.
#' summary_4 function takes in the textual data and count the
#' number of sentences, number of stop words and frequency of 
#'' words in the data. It summarizes the data well.

#' Test for output type
test_that("Test that output is of type dataframe", {
  df = data.frame('text' = c('Today is a sunny day', 'We should go to a beach on this sunny day'))
  
  result = summary_4(df$text)
  class_name = (class(result)[3])
  
  expect_true(class_name == 'data.frame')
})





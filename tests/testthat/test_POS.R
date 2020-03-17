# This script tests the POS tagging
# author: Karlos Muradyan
# date: Mar 6, 2020

context('get_part_of_speech')

#' This script tests the results of the polarity function.
#' POS tagging function takes in the textual data and count the
#' proportions of part of speech.


#' Test for output type
testthat::test_that("Test that output is of type dataframe", {
  df = data.frame('text' = c('Today is a sunny day', 'We should go to a beach on this sunny day'))

  res = get_part_of_speech(df$text)
  class_name = (class(res))

  expect_true(class_name == 'data.frame')
})

#' Test for invalid input
testthat::test_that("Test the correctness of the output", {
  df = data.frame('text' = c(1, 2, 3))

  expect_error(get_part_of_speech(df$text),'The function should get input character or factor columns of dataframe')
})



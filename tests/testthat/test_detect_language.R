# This script tests the language of the input text
# author: Samneet Chepal
# date: Mar 6, 2020

context('Detect Language')

#' This script will test the results of the detect language function.
#' The detect language function determines the type of language of the input text.

#' Test for input type

df <- data.frame(text_col = c('I am a happy person',
                              "J'aime manger un énorme petit déjeuner avant d'aller travailler",
                              'Hola mi nombre es Bill y me gustan los gatos'))

testthat::test_that("Test that input is of type character", {
  res = detect_language(df$text)
  expect_true((class(res)) == 'character')
})


#' Test for proper language detection

testthat::test_that("Test that function correctly identifies the proper language", {
  res = detect_language(df$text)
  expect_true(res[1] == 'english')
  expect_true(res[2] == 'french')
  expect_true(res[3] == 'spanish')
})

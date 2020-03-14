# author : Samneet Chepal
# date : 26 Feb 2020

library(textcat)

#' This function will search through the Pandas DataFrame column of
#' textual data to detect the language of the corpus.
#'
#' @param df_col a list of values in data.frame column with textual data
#'
#' @return string the type of language present in the corpus
#'
#' @examples
#'    >>> df <- data.frame(text_col =  c('I love travelling to Japan and eating Mexican food but I can only speak English!'))
#'    >>>> detect_language(df$text_col)
#'      [1]  'english'


detect_language <- function(df_col) {
                   textcat(df_col)}


 df <- data.frame(text_col =  c('I love travelling to Japan and
                             eating Mexican food but I can only speak
                           English!'))

detect_language(df$text_col)

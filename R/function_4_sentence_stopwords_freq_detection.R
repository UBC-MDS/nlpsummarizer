# Author : Vignesh Chandrasekaran on
# Date : 26-Feb-2020

#' This function generates the following:
#'          - number of sentences,
#'          - number of stop words
#'          - list of high frequency
#'          - frequency of the words
#'       when a column of a dataframe or tibble is passed in.
#'
#' @param df_col (array): send in a column of the data.frame/tibble
#'
#' @return  a data.frame with the following elements:
#'          nos    : number of sentences present in a column of the dataframe
#'          nosw   : number of stop-words present in a column of the dataframe
#'          list_hf: list of top 5 frequetly encountered words
#'          hf     : number of times the high frequency word was encountered.
#'
#'
#' @example
#'        >>> ex = data.frame({'text_col' : c('Today is a beautiful Monday
#'                                                and I would love getting a
#'                                                coffee. However, startbucks
#'                                                is closed.')})
#'
#'        >>> summary_4(ex$text_col)
#'
#'        [1]  | number of sentences | number of stop words | high freq. words |
#'             |         2           |           6          |    is(2), a(2)   |
summary_4_sentence_stopwords_freq_detection<- function(df_col) {

}

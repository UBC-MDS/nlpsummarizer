# Function authored by Vignesh Chandrasekaran on 26-Feb-2020

#' This function generates the following:
#'          - number of sentences,
#'          - number of stop words
#'          - list of high frequency
#'          - frequency of the words
#'       when a column of a dataframe or tibble is passed in.
#'
#' @param tibble_col (array): send in a column of the dataframe/tibble
#'
#' @return  nos (integer): number of sentences present in a column of the dataframe
#'          nosw (integer)     : number of stop-words present in a column of the dataframe
#'          list_hf (integer)  : list of top 5 frequetly encountered words
#'          hf (integer)       : number of times the high frequency word was encountered.
#'
#'
#' @example
#'        >>> ex = tibble({'text_col' : 'Today is a beautiful Monday
#'                                                and I would love getting a
#'                                                coffee. However, startbucks
#'                                                is closed.'})
#'
#'        >>> summary_4(ex$text_col)
#'
#'        [1]  | number of sentences | number of stop words | high freq. words |
#'             |         2           |           6          |    is(2), a(2)   |
summary_4_sentence_stopwords_freq_detection<- function(tibble_col) {

}

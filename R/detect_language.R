# author : Samneet Chepal
# date : 26 Feb 2020


#' This function will search through the Pandas DataFrame column of
#' textual data to detect the language of the corpus.
#'
#' @param df_col a list of values in data.frame column with textual data
#'
#' @return string the type of language present in the corpus
#'
#' @export
#'
#' @examples
#' df = data.frame(text = c('He is a good guy.This is the worst coffee I had in my life.'))
#' detect_language(df$text_col)

detect_language <- function(df_col) {

  textcat::textcat(df_col)
  }


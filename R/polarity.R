# author : Karanpal Singh
# date : 26 Feb 2020

#' Polarity
#'   This method will check and compute the polarity of the text data.
#'   This method will return:
#'   - Number of Positive words
#'   - Number of Negative words
#'   - Number of Neutral words
#'
#' @param df$col
#' This method will expect dataframe's column with textual data
#'
#' @return dataframe with one row containing columns for count of positive, negative and neutral words
#'
#' @examples
#'     >>>> df = data.frame(text = c('He is a good guy.
#'                              This is the worst coffee I had in my life.'))
#'    >>>> polarity(df$text)
#'    [1]  | positive words | negative words | neutral words |
#'         |         1      |           1    |    0          |

polarity <- function(df_col){

}

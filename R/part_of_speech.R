# author : Karlos Muradyan 
# date : 26 Feb 2020


#' This function generates statistics about the proportions of following
#' parts of speech in the given column:
#'     - verbs
#'     - prepositions
#'     - adjectives
#'     - nouns
#'     - articles
#'
#' @param df_col a list of values in data.frame column with textual data
#'
#' @return data.frame with one row containing columns verbs, prepositions,
#'	 adjectives, nouns and articles.
#'
#' @examples
#'    >>> ex <- data.frame(text_col =  c('Today is a beautiful Monday'))
#'    >>>> get_part_of_speech(ex$text_col)
#'
#'      [1]  |   verbs    | prepositions | adjectives |   nouns   |  articles  |
#'           |    0.2     |     0.11     |     0.3    |    0.06   |     0.18   |

get_part_of_speech <- function(df_col){

}

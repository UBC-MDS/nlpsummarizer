# author : Karlos Muradyan 
# date : 26 Feb 2020

library(udpipe)

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

get_part_of_speech <- function(df_col, model_path = './data/english-ewt-ud-2.4-190531.udpipe'){
	if (!(class(df_col) == "character" || class(df_col) == "factor")){
		stop('The function should get input character or factor columns of dataframe')
	}

	if (!file.exists(model_path)){
		print('Model does not exist in ./data folder')
		print('Downloading...')
		model_path <- udpipe_download_model(language = "english", model_dir = './data')$file_model
	}
	udmodel <- udpipe_load_model(file = model_path)
	tagged_text <- udpipe_annotate(udmodel, df_col)
	resulting_df <- as.data.frame(tagged_text)

	proportions <- table(resulting_df$upos)/nrow(resulting_df)
	results <- as.data.frame(t(as.matrix(data.frame(proportions))))
	names(results) <- as.character(unlist(results[1,]))
	results <- results[-1,]
	return(results)
}

ex <- data.frame('text_col' = c('Today is a sunny day', 'We should go to a beach on this sunny day'))
ex <- data.frame('text_col' = c(1,2))
print(get_part_of_speech(ex$text_col)[[1]])


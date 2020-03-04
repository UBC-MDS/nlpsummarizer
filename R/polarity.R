# author : Karanpal Singh
# date : 26 Feb 2020

#' Polarity
#'   This method will check and compute the polarity of the text data.
#'   This method will return:
#'   - Number of Positive words
#'   - Number of Negative words
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
#'    [1]  | positive words | negative words |
#'         |         1      |           1    |

library(tidyverse)
library(dplyr)
library(readr)
library(readxl)
library(stringi)
library(tokenizers)

polarity <- function(df_col){
    
    tryCatch(
    
        expr = {
            # loading positive lexicons
            positive_words_df = read_csv('../data/positive-words.txt', skip = 34)
            positive_words = list(positive_words_df$words)[[1]]
            
            # loading negative lexicons
            negative_words_df = read_csv('../data/negative-words.txt', skip = 34)
            negative_words = list(negative_words_df$words)[[1]]
        },
        error = function(e){
            print('Error reading Lexicons. Please check if lexicon files are in data directory...')
        }
    )

    
    tryCatch(
    
        expr = {
            # concat for processing simplicity
            all_messages = stri_paste_list(list(df$text), sep = ", ", collapse = "")
        },
        error = function(e){
            print('Concat failed, please provide valid column of textual data')
        }
    )
    

    tryCatch(
    
        expr = {
            # sensing tokens
            word_tokens = (tokenize_words(all_messages))[[1]]
        },
        error = function(e){
            print('Tokenization failed, please provide a valid column of textual data')
        }
    )
    
    
    # counting positive words
    positive_word_count = 0
    for(i in word_tokens){
        if(i %in% positive_words){
            positive_word_count = positive_word_count + 1
        }
    }
    
    # counting negative words
    negative_word_count = 0
    for(i in word_tokens){
        if(i %in% negative_words){
            negative_word_count = negative_word_count + 1
        }
    }
    
    tibble('positive_words' = positive_word_count, 'negative_words'=negative_word_count)
}

df = read_excel('../data/text_data.xlsx')
polarity(df$text)

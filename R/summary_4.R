library(tidyverse)
library(dplyr)
library(readr)
library(readxl)
library(stringi)
library(stringr)
library(quanteda)
library(stopwords)
library(tidytext)
library(tm)
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
summary_4<- function(df_col) {

  tryCatch(

    expr = {
      # concat for processing simplicity
      all_messages = stri_paste_list(list(df_col), sep = ". ", collapse = "")
    },
    error = function(e){
      print('Concat failed, please provide valid column of textual data')
    }
  )

  #Computes the number of sentences.
  nos = nsentence(all_messages)

  #Computes the number of words in text.
  stop_count = sum(stringr::str_detect(tolower(all_messages), stopwords()))

  #Splits the passage into a vector of words.
  all_messages_split = str_split(all_messages, " ")

  #Computes the frequency of words
  fow = data.frame(sort(table(c(all_messages_split)), decreasing=T)[1:3])

  #Returns a dataframe with all the desired outputs.
  return(data.frame('Number of sentences' = nos,
              'Number of stopwords' = stop_count))

}


# a = read_excel('data/text_data.xlsx')
# a
#
# b = (summary_4(a$text))
# class(b)

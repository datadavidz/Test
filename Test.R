# this is a test script

readSpotfire <- function(filename, file_dir) {
  setwd(file_dir)
  
  # the UTF-16 encoding is required or it won't import
  # for the FR data it wouldn't load with quote disabled
  df <- read.table(filename, sep="\t", fileEncoding="UTF-16", comment.char="",
                   header=TRUE, stringsAsFactors=FALSE)
  return(df)
}

filename = "ALL UL-VX5 LEXAN NO PIVOT.txt"
file_dir = "c:/Users/David Zoller/Documents/_New/FR"

fr_data <- readSpotfire(filename, file_dir)
fizz_buzz <- function(num){
  if(!(num%%3L)) result <- 'Fizz' 
  if(!(num%%5L)) result <- paste0(ifelse(exists('result'),result,''),'Buzz') 
  print(ifelse(exists('result'),result,num))
}

sapply(seq_len(100L),fizz_buzz)

fizz_buzz <- function(num){
  result <- ''
  if(!(num%%3L)) result <- 'Fizz' 
  if(!(num%%5L)) result <- paste0(result,'Buzz') 
  print(ifelse(result=='',num,result))
}

sapply(seq_len(100L),fizz_buzz)

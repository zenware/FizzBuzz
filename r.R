fizz_buzz <- function(num){
  result <- ''
  if(!(num %% 3))   result <- 'Fizz' 
  if(!(num %% 5))  result <- paste0(result,'Buzz') 
  print(ifelse(result=='',num, result))
}

sapply(seq_len(100), fizz_buzz)
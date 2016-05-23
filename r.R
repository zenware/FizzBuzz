fizz_buzz <- function(num_array=1:100){
result_array <-
paste0(ifelse(num_array%%3L,'','Fizz'),ifelse(num_array%%5L,'','Buzz'))
result_array[result_array==''] <- num_array[result_array=='']
done <- sapply(result_array, function(res) cat(paste0(res,'\n')))
}

fizz_buzz()

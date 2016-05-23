fizz_buzz <- function(num_array){
result_array <- paste0(ifelse(num_array%%3L,'','Fizz'),ifelse(num_array%%5L,'','Buzz')
result_array[result_array==''] <- num_array[result_array=='']
print(result_array)
}

fizz_buzz(1:100)

fizz_buzz <- function(num_array=seq_len(100L)){
result_array <- Map(function(res,num){cat(paste0(ifelse(res=='',num,res),'\n'))},
                    res=paste0(ifelse(num_array%%3L,'','Fizz'),
                               ifelse(num_array%%5L,'','Buzz')),
                    num=num_array)
}

fizz_buzz()

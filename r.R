fizz_buzz <- function(num_array=seq_len(100L)){
result_array <- Map(function(r,n){cat(paste0(ifelse(r=='',n,r),'\n'))},
                    r=paste0(ifelse(num_array%%3L,'','Fizz'),
                               ifelse(num_array%%5L,'','Buzz')),
                    n=num_array)
}

fizz_buzz()

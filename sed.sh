#!/bin/bash
# first sed invocation generates 100 lines of input 
# second sed replaces each input line with its line number
# third sed replaces every third and fifth line with fizz and buzz
sed 's/.*/1/;h;:g;x;H;x;/\(1\n\)\{99\}/!b g;' <<<"" | sed '=;d' | sed '3~3s/.*/Fizz/;5~5s/[0-9]*$/Buzz/'

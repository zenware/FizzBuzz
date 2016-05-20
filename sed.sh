#!/bin/bash

# check if we have GNU extensions
case $(sed --help 2>&1) in

# version with GNU extensions
# first sed invocation generates 100 lines of input 
# second sed replaces each input line with its line number
# third sed replaces every third and fifth line with fizz and buzz
  *GNU*) sed 's/.*/1/;h;:g;x;H;x;/\(1\n\)\{99\}/!b g;' <<<"" | sed '=;d' | sed '3~3s/.*/Fizz/;5~5s/[0-9]*$/Buzz/';;

# version without GNU extensions (third invocation has to be split into two and is a bit more complex)
  *) sed 's/.*/1/;h;:g;x;H;x;/\(1\n\)\{99\}/!b g;' <<<"" | sed '=;d' | sed ':l;n;n;s/.*/Fizz/;n;b l' | sed ':l;n;n;n;n;s/[0-9]*$/Buzz/;n;b l';;
esac

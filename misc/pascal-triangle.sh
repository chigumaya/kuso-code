for i in {9..0};do printf %$i\s;eval echo \$[$p]|xargs -n1|sort|uniq -c|sort -nk2|awk NF--|xargs;p+=\{,+1};done

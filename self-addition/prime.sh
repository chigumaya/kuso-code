#!/bin/sh
x=.$x
n=
>/dev/null expr "$x" : '\(...\)*$' && echo -n Fizz || n=${#x}
>/dev/null expr "$x" : '\(.....\)*$' && echo Buzz || echo $n
>/dev/null expr "$n" : ... && exit || sed /q/q $0 >> $0

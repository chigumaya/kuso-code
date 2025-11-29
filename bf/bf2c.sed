#!/usr/bin/sed -f
# brainfuck to C translator
s/[^-><+.,\]\[]//g
1i\
#include <stdio.h>\
int main() {\
  int c = 0;\
  static int b[30000];
s/\]/  }\n/g
s/\[/  while(b[c]!=0){\n/g
s/\+/  ++b[c];\n/g
s/-/  --b[c];\n/g
s/>/  ++c;\n/g
s/</  --c;\n/g
s/\./  putchar(b[c]);\n/g
s/,/  b[c] = getchar();\n/g
$a\
  return 0;\
}

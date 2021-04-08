#!/bin/bash

ret=0
for file in "$@"
do
    echo "---------- run uncrustify for ${file} ----------"
    uncrustify -c uncrustify_example.cfg -l c --check ${file}
    if [ $? -ne 0 ]; then
        uncrustify -c uncrustify_example.cfg -l c -f ${file} -o output.tmp
        diff ${file} output.tmp
        rm output.tmp
        ret=1
    fi
done
exit ret

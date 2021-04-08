#!/bin/bash

mycfg=linux_c.cfg

ret=0
for file in "$@"
do
    echo "---------- run uncrustify for ${file} ----------"
    uncrustify -c ${mycfg} -l c --check ${file}
    if [ $? -ne 0 ]; then
        uncrustify -c ${mycfg} -l c -f ${file} -o output.tmp
        diff ${file} output.tmp
        rm output.tmp
        ret=1
    fi
done
exit ${ret}

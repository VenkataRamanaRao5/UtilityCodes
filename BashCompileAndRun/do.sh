#!/bin/bash
a=$1
read c < "cur.txt"
if [ $a == 1 ]; then
        vi $c.c
elif [ $a == 2 ]; then
        cc $c.c -o $c
elif [ $a == 3 ]; then
        ./$c
        echo ""
fi
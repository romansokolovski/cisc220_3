#!/bin/bash
read -a listWords -p "Insert a list of words: "
for (( n=0; n<(${#listWords}); n++ )); do echo $n; done


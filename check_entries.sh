#!/bin/bash

### Find any entries that are logged to the wrong month.
# Usually detects entries that are logged to the correct month with the wrong date.

for file in 20??-??
do
    egrep '^[0-9]+' $file | grep -v $file && echo {{$file}}
done


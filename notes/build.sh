#!/usr/bin/env bash

for line in $(cat index)
do
    pandoc md/$line.md -o html/$line.html
done

pandoc md/index.md -o html/index.html


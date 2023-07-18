#!/usr/bin/env bash

cp md/template.md md/$1.md
echo >> index
echo -n $1 >> index

echo "- [$2]($1.html)" >> md/index.md

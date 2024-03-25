#!/bin/sh

set -eu
./generate.sh $1 $2
git add $1
git commit -m "Add redirect to $2"
set +u
git push ${3:-origin} $(git rev-parse --abbrev-ref HEAD)

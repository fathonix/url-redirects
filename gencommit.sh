#!/bin/sh

set -eu
newdir=$(./generate.sh "$@")
git add "$newdir"
git commit -m "Add redirect to $@"
set +u
git push ${3:-origin} $(git rev-parse --abbrev-ref HEAD)

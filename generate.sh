#!/bin/sh

set -eu

url="$@"
dir=1

while [ -d $dir ]; do
  dir=$((dir+1))
done

mkdir $dir
cat > ${dir}/index.html <<EOF
<!DOCTYPE html>
<meta charset="utf-8">
<title>Redirecting to ${url}</title>
<meta http-equiv="refresh" content="0; URL=${url}">
<link rel="canonical" href="${url}">
EOF
echo $dir

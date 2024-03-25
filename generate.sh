#!/bin/sh

set -eu

dir=$1
url=$2

mkdir $dir
cat > $dir/index.html <<EOF
<!DOCTYPE html>
<meta charset="utf-8">
<title>Redirecting to $url</title>
<meta http-equiv="refresh" content="0; URL=$url">
<link rel="canonical" href="$url">
EOF

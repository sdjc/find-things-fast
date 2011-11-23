#!/usr/bin/env bash

version=$1

if [ "$version" = "" ]; then
    version=$(date -u '+%Y%m%d')
fi
echo "version = $version"

dir="find-things-fast-${version}"

mkdir $dir

cp *.el $dir
sed -i "s/%%version%%/$version/" "$dir/find-things-fast-pkg.el"

tar cf ${dir}.tar $dir

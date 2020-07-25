#!/usr/bin/env bash
DIR=$(dirname "$0")

status=0

for file in $DIR/tests/*.bm; do
    tmp=$(mktemp)
    $DIR/scanner_main $file > $tmp
    if ! diff -u ${file/.bm/.out} $tmp; then
        echo $file: FAIL
        status=1
    fi
    rm $tmp
done

exit $status
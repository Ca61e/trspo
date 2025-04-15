#!/bin/bash

APP="../src/trispo"

echo "APP=$APP"
if [ ! -f "$APP" ]; then
    echo "Ahtung: nenaxod"
    exit 1
fi

run_test() {
    local input=$1
    local expected=$2
    local test_num=$3

    local output=$(echo "$input" | $APP 2>&1)
    local result=$(echo "$output" | grep -E 'Chislo [0-9]+ (prostoe|not prostoe)' | grep -oE '(prostoe|not prostoe)')

    if [ "$result" = "$expected" ]; then
        echo "Test $test_num: Sucses ($input -> $expected)"
        return 0
    else
        echo "Test $test_num: Fail. Enter: '$input'"
        echo "Nado bilo: '$expected', a po itogy: '$result'"
        echo "$output"
        return 1
    fi
}

echo "0===0= Zapusk testoy =0===0"

run_test "4" "prostoe" 1
run_test "52" "not prostoe" 2

exit 0


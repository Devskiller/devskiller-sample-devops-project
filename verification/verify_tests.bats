#!/usr/bin/env bats

@test "Verification test - test addition" {
    /var/lib/calculator/calc.sh 5 + 10
    [ "$status" -eq 0 ]
    [ "${lines[0]}" = "15" ]
}

@test "Verification test - test subtraction" {
    /var/lib/calculator/calc.sh 5 - 5
    [ "$status" -eq 0 ]
    [ "${lines[0]}" = "0" ]
}

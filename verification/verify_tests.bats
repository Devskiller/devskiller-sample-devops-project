#!/usr/bin/env bats

@test "Verification test - test if the script is executable" {
    [ -x /var/lib/candidate/calc.sh ]
}

@test "Verification test - test addition" {
    chmod +x /var/lib/candidate/calc.sh
    run /var/lib/candidate/calc.sh 5 + 10
    [ "$status" -eq 0 ]
    [ "${lines[0]}" = "15" ]
}

@test "Verification test - test subtraction" {
    chmod +x /var/lib/candidate/calc.sh
    run /var/lib/candidate/calc.sh 5 - 5
    [ "$status" -eq 0 ]
    [ "${lines[0]}" = "0" ]
}

#! /usr/bin/env bats

load mocks
source autoinstall.sh

@test 'first test' {
    [ 1 == 1 ] 
}

@test 'run function should execute script assigned to ks' {
    run run_autoinstall
    [[ "$output" == **'This is a test'** ]]
}




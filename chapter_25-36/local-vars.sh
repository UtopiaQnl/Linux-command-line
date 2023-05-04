#!/usr/bin/env bash

foo=0

func_1() {
    local foo
    foo=1
    echo "func_1: foo = $foo"
}

func_2() {
    local foo
    foo=2
    echo "func_2: foo = $foo"
}

echo "global: foo = $foo"
func_1
echo "global: foo = $foo"
func_2
echo "global: foo = $foo"

#! /bin/bash
# BASH FUNCTION CAN BE DECIARED IN ANY ORDER

function function_B {
	echo Function B.
}

function function_A {
	echo $1
}

function function_D {
	echo Function D.
}

function function_C {
	echo $1
}

# FUNCTION CALLS
# Pass parameter to function A
function_A "Function A."
function_B
# Pass parameter to function C
function_C "Function C."
function_D 
#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Write a program that prompts for and reads two numbers 
# (on separate lines of input) and prints out the product 
# of the two numbers multiplied together.

say "Please provide first number to multiply:";
chomp($num1 = <STDIN>);

say "Please provide second number to multiply:";
chomp($num2 = <STDIN>);

$product = $num1 * $num2;

say "$num1 multiplied by $num2 is $product";
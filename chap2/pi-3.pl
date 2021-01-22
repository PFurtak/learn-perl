#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Modify the program from the previous exercise so that, 
# if the user enters a number less than zero, the reported 
# circumference will be zero, rather than negative.

say "What is the radius? ";
chomp($radius = <STDIN>);
$circumference = (2 * 3.141592654) * $radius;

if ($radius <= 0) {
    say "0";
} else {
    say "The circumference is: $circumference";
}
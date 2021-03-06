#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Modify the program from the previous exercise to prompt
# for and accept a radius from the person running the program. 
# So, if the user enters 12.5 for the radius, she should get 
# the same number as in the previous exercise.

say "What is the radius?";
chomp($radius = <STDIN>);
$circumference = (2 * 3.141592654) * $radius;

say "The circumference is: $circumference";
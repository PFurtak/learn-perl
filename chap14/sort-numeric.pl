#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Write a program to read in a list of numbers and sort them numerically,
# printing out the resulting list in a right-justified column. Try it 
# out on this sample data:
# 17 1000 04 1.50 3.14159 -10 1.5 4 2001 90210 666

say "Please provide a number one at a time to sort:";

chomp(my @nums = <STDIN>);

my @sorted = sort {$a <=> $b} @nums;

foreach (@sorted) {
    printf "%20g\n", $_;
}
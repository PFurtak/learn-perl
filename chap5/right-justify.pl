#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Write a program that asks the user to enter a list of 
# strings on separate lines, printing each string in a 
# right-justified, 20-character column. To be certain 
# that the output is in the proper columns, print a 
# “ruler line” of digits as well. (This is simply a debugging aid.) 
# Make sure that you’re not using a 19-character column by mistake!

print "Please provide some lines to justify: ";

chomp(my @lines = <STDIN>);

print "1234567890" x 7, "12345\n";

foreach (@lines) {
    printf "%20s\n", $_;
}
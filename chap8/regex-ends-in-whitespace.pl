#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Write a new program (not the test program!) that prints out any input line 
# ending with whitespace (other than just a newline). Put a marker character 
# at the end of the output line so as to make the whitespace visible.

say "White space detector, give us a scentence to see if it ends in whitespace:";

while (<>) {
    chomp;
    if (/\s\z/) {
        print "$_#\n"
    } else {
        say "$_: Does not end in whitspace."
    }
}
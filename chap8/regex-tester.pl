#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Using the pattern test program, make a pattern to match the string match. 
# Try the program with the input string beforematchafter. Does the output 
# show the three parts of the match in the right order?

say "Please give some dog breeds to run through the regex tester: ";

while (<>) {
    chomp;
    if (/(D|doberman)/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|\n";
    }
}


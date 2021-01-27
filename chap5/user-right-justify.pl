#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Modify the previous program to let the user choose the column width, 
# so that entering 30, hello, good-bye (on separate lines) would put 
# the strings at the 30th column. For extra credit, make the ruler line 
# longer when the selected width is larger.

print "Please specify column width: ";
chomp(my $width = <STDIN>);

print "Please provide words to justify: ";
chomp(my @lines = <STDIN>);

print "1234567890" x (($width+9)/10), "\n";

foreach (@lines) {
    printf "%${width}s\n", $_;
}


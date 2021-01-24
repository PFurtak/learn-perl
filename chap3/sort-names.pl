#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Write a program that reads a list of strings (on separate lines)
# until end-of- input. Then it should print the strings in code point order.
# That is, if you enter the strings fred, barney, wilma, betty, 
# the output should show barney betty fred wilma. 
# Are all of the strings on one line in the output or on separate lines? 
# Could you make the output appear in either style?

say "Give me some names: ";

# new line
# @names = sort <STDIN>;

# one line
chomp(@names = sort <STDIN>);

say "Here are the names sorted: ";

foreach (@names) {
    print "$_\t";
}

say "";

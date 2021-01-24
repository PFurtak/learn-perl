#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Write a program that reads a list of strings on separate lines 
# until end-of-input and prints out the list in reverse order. 
# If the input comes from the keyboard, you’ll probably need to 
# signal the end of the input by pressing Control-D on Unix,
# or Control-Z on Windows.

say "Give me some lines to reverse: ";

@lines = <STDIN>;

@lines = reverse @lines;

say "Here is the list reversed: ";

foreach (@lines) {
    print;
}
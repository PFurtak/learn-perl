#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Write a program that reads a list of numbers (on separate lines) 
# until end-of- input and then prints for each number the corresponding 
# person’s name from the following list. (Hardcode this list of names 
# into your program. That is, it should appear in your program’s source code.)

@names = ('Bill', 'Ted', 'Bob', 'Mark', 'Steve', 'Bert');

say "Please provide numbers 0-5 to print names: ";

chomp(@nums = <STDIN>);

say "Here are the names: ";

foreach (@nums) {
    if ($_ > 5) {
        say "$_ is out of range 0-5.";
    } else {
        say "$names[$_]";
    }
}
#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Write a program that prompts for and reads a string and a number
# (on sepa‐ rate lines of input) and prints out the string the number 
# of times indicated by the number on separate lines. (Hint: use the x operator.) 
# If the user enters “fred” and “3”, the output should be three lines, each saying 
# “fred”. If the user enters “fred” and “299792,” there may be a lot of output.

say "Please provide a word to repeat:";
$word = <STDIN>;

say "Please provide a number to repeat:";
$number = <STDIN>;

$repeat = $word x $number;

say "Repeat:";
say "$repeat";
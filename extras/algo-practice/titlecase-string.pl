#!/usr/bin/perl
use v5.10;
use strict;
use warnings; 
use diagnostics;

# Write a program that title cases a string provided by STDIN

say "Please provide a string to title case.";
chomp(my $string = <STDIN>);
$string =~ s/(\w+)/\u$1/g;

say $string;
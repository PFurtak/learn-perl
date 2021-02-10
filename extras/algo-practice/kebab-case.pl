#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# given a string from STDIN, replace all spaces with '-';

say "Please provide a string to titlecase.";
chomp(my $string = <STDIN>);
$string =~ s/\s+/\-/g;

say $string;
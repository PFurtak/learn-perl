#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# given a string, print it reversed.

say "Give a string you would like to reverse";

chomp(my $str = <STDIN>);
$str = reverse $str;
say $str;

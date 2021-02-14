#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Write a program that prompts the user for a word and checks if it is an anagram.

my $result;

say "Please provide a word to check if it is an anagram.";
chomp(my $word = lc <STDIN>);
$word =~ s/\s*//g;

if ($word eq reverse $word) {$result = "True"} else {$result = "False"};

say "$result";
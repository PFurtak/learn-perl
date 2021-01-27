#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Write a program to list all of the keys and values in %ENV.
# Print the results in two columns in ASCIIbetical order. 
# For extra credit, arrange the output to vertically align 
# both columns. The length function can help you figure out 
# how wide to make the first column. Once you get the program
# running, try setting some new environment variables and ensuring
# that they show up in your output.

my $longest = 0;
foreach my $key (keys %ENV) {
    my $key_length = length($key);
    $longest = $key_length if $key_length > $longest;
}

foreach my $key (sort keys %ENV) {
    printf "%-${longest}s %s\n", $key, $ENV{$key};
}
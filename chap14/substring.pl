#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Make a program that looks through a given string for every occurrence
# of a given substring, printing out the positions where the substring
# is found. For example, given the input string "This is a test." and
# the substring "is", it should report positions 2 and 5. If the substring
# were "a", it should report 8. What does it report if the substring is "t"?

# my $string = "This is a test.";
# my @positions = ();
# my $where = -1;

# while (1) {
#     $where = index($string, 't', $where + 1);
#     last if $where == -1;
#     push @positions, $where;
# }

# foreach (@positions) {
#     say $_;
# }

####################
#   Book Example   #
####################

say "Please enter a string: ";
chomp(my $string = <STDIN>);
say "Please enter a substring: ";
chomp(my $sub = <STDIN>);

my @positions;

for (my $index = -1; ; ) { #infinite for loop
    $index = index($string, $sub, $index + 1); #once it finds a sub str match, it continues looking through the string from $index + 1
    last if $index == -1;
    push @positions, $index;
}

say "Locations of '$sub' in '$string' were: @positions.";

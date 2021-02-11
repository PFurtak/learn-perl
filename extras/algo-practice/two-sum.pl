#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Given an integer (target), and an array of integers, return the indices of two numbers in the array
# that has a sum equal to the target;

my @number_set_1 = ("13", ("1", "2", "3", "4", "5", "6", "7"));
sub two_sum {
    my $target = shift;
    my @nums = @_;
    my @indices;
    my $array_length = scalar (@nums);

    for (my $i = 0; $i < $array_length; $i++) {
        for (my $j = $i + 1; $j < $array_length; $j++) {
            if ($nums[$i] + $nums[$j] == $target) {push @indices, ("[$i, $j]")};
        }
    }

    @indices ? say join(', ', @indices) : say "No Match";
}

two_sum(@number_set_1);

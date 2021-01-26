#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Write a subroutine, named total, which returns the total 
# of a list of numbers. Hint: the subroutine should not 
# perform any I/O; it should simply process its parameters 
# and return a value to its caller.

my @nums = qw /1 3 5 7 9/;

sub sum_list {
    my @list = @_;
    my $sum = 0;

    foreach my $item (@list) {
        $sum += $item;
    }
    say "The sums of @nums is equal to $sum";
    return $sum;
}

&sum_list(@nums);
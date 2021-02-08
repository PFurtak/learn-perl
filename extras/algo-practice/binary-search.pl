#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use POSIX;

# Given a number and a sorted array, return the position of the number in the array.

searchTarget(23, (1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23));

# sub searchTarget {
# my $target = shift;
# my @arr = @_;
# my $idx = 0;

# foreach (@arr) {
#     if ($_ == $target) {
#         print "$idx\n";
#     } else {
#         $idx++;
#     }
#   }
# }

# Binary search it:

sub searchTarget {
   my $target = shift;
   my @arr = @_;
   my $beginning = 0;
   my $end = scalar(@arr) - 1;

    while ($beginning <= $end) {
       my $mid = floor($beginning + $end) / 2;

        if ($arr[$mid] == $target) {
            print "$mid\n";
            return;
        } elsif ($arr[$mid] < $target) {
            $beginning = $mid + 1;
        } else {
            $end = $mid - 1;
        }
    }
}
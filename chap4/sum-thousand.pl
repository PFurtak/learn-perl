#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Using the subroutine from the previous problem, make a program 
# to calculate the sum of the numbers from 1 to 1,000.

# INEFFICIENT:
# my @nums = (1..1000);

# sub sum_list {
#     my @list = @_;
#     my $sum = 0;

#     foreach my $item (@list) {
#         $sum += $item;
#     }
#     say "The sums of 1 to 1000 is equal to $sum";
#     return $sum;
# }

# &sum_list(@nums);

#Efficent:
sub sum_to_thousand {
    my $sum = 0;

    for (my $i = 1; $i <= 1000; $i++) {
        $sum += $i;
    }
      say "The sums of 1 to 1000 is equal to $sum";
      return $sum;
}

&sum_to_thousand();
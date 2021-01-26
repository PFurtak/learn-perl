#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Extra credit exercise: write a subroutine, called &above_average, 
# which takes a list of numbers and returns the ones above the average (mean). 
# (Hint: make another subroutine that calculates the average by dividing 
# the total by the number of items.) Try your subroutine in this test program:

@numbers = (1..10);

sub find_average {
    my @nums = @_;
    my $sum = 0;

    foreach (@nums){
        $sum += $_;
    }

    $average = $sum / scalar(@nums);
}

sub list_above_average {
    my ($avg, @nums) = @_;
    my @above_avg_list = ();

    foreach (@nums) {
        if ($_ > $avg) {
            push(@above_avg_list, $_);
        }
    }
    say "These are the above average numbers in the list: @above_avg_list";
}

&find_average(@numbers);
&list_above_average($average, @numbers);
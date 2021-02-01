#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Write a program using Time::Moment to compute the interval between now
# and a date that you enter as the year and month on the command line.

use Time::Moment;

my $now = Time::Moment->now;

my $then = Time::Moment->new(
    year => $ARGV[0],
    month => $ARGV[1],
);

my $years = $then->delta_years($now);
my $months = $then->delta_months($now) % 12;

printf "%d years and %d months\n", $years, $months;
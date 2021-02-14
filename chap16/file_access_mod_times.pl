#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Write a program to make a report of the access and modification
# times (in the epoch time) of the files in the current directory.
# Use stat to get the times, using a list slice to extract the elements.

# Modify your answer to Exercise 2 to report the times using the YYYY-MM-DD 
# format. Use a map with localtime and a slice to turn the epoch times into
# the date strings that you need. Note the localtime documentation about the
# year and month values it returns.

foreach my $file (glob('*')) {
    my ($accessed_time, $modified_time) = map {
        my( $year, $month, $day ) = (localtime($_))[5,4,3];
        $year += 1900; $month += 1;
        sprintf '%4d-%02d-%02d', $year, $month, $day;
    } (stat $file)[8,9];

    printf "%-20s %10s %10s\n", $file, $accessed_time, $modified_time;
}
#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Make a program to identify the oldest file named on the command line 
# and report its age in days. What does it do if the list is empty? 
# (That is, if no files are mentioned on the command line.)

die "No files were submitted" unless @ARGV;

my $oldest_name = shift @ARGV;
my $oldest_age = -M $oldest_name;

foreach my $file (@ARGV) {
    my $age = -M $file;
    ($oldest_name, $oldest_age) = ($file, $age) if $age > $oldest_age;
}

printf "The oldest file is %s and it is %.2f days old.\n", $oldest_name, $oldest_age;
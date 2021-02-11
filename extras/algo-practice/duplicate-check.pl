#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Write a program that checks to see if the provided array contains a duplicate.

my @names = qw(bill fred mike tom frank);
my @names_with_dupe =  qw(bill fred mike tom frank bill);

sub dupe {
  my %hash;
  my $result = "False";
    
    foreach my $person (@_) {
        if (exists $hash{$person}) {$result = "True"; last;} else {$hash{$person} = 1};
    }
    say $result;
}

 dupe(@names);
 dupe(@names_with_dupe);


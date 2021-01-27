#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Write a program that will ask the user for a given
# name and report the corresponding family name.

my %user_lastnames = (
    Bill => 'Burr',
    Tom => 'Segura',
    Burnt => 'Chrysler',
    Ryan => 'Sickler',
);

my @k = keys %user_lastnames;

    say "Please provide a comedians firstname to find out their lastname: @k";
    chomp(my $user_input = <STDIN>);

    print "$user_input\'s lastname is $user_lastnames{$user_input}. \n";

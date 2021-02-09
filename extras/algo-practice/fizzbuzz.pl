#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Given a number n, print all consecutive numbers up to n from 1. If the n is divisible by 3, print 'Fizz'.
# If n is divisible by 5 print 'Buzz'. If n is divisible by 15 print 'FizzBuzz'.

sub fizzbuzz {
say "Please provide a number to count up to"; 
chomp(my $num = <STDIN>);
my $count = 1;

if ($num =~ /\D+/) {die "A number was not provided."};

while ($count <= $num) {
    if ($count % 15 == 0) {
        say "FizzBuzz";
    } elsif ($count % 5 == 0) {
        say "Buzz";
    } elsif ($count % 3 == 0) {
        say "Fizz";
    } else {
        say $count;
    }
    $count++;
}

}

fizzbuzz();
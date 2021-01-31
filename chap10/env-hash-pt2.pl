#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Modify the program from Exercise 3 in Chapter 6 (the environment lister)
# to print (undefined value) for environment variables without a value. 
# You can set the new environment variables in the program. Ensure that
# your program reports the right thing for variables with a false value. 
# If you are using Perl 5.10 or later, use the // operator. Otherwise, 
# use the conditional operator.

$ENV{ZERO} = 0;
$ENV{EMPTY} = "";
$ENV{UNDEFINED} = undef;

my $longest = 0;
foreach my $key (keys %ENV) {
    my $key_length = length($key);
    $longest = $key_length if $key_length > $longest;
}

foreach my $key (sort keys %ENV) {
    printf "%-${longest}s %s\n", $key, $ENV{$key} // "(undefined)";
}
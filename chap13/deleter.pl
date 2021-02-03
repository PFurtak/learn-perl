#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;
use Cwd;

# Write a program that works like rm, deleting any files named
# on the command line. (You don’t need to handle any of the 
# options of rm.)

foreach (@ARGV) {
    unlink $_ or warn "Could not unlink'$_': $!, continuing...\n";
}
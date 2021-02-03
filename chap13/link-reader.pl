#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# If your operating system supports it, write a program 
# to find any symbolic links in the current directory 
# and print out their values.

foreach (glob('.* *')) {
    my $dest = readlink $_;
    print "$_ -> $dest\n" if defined $dest;
}
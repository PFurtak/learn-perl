#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Make a program that uses stacked file test operators to list all 
# files named on the command line that are readable, writable, and owned by you.

die "No files were provided" unless @ARGV;

foreach (@ARGV) {
   say "$_: File is readable, writable, and owned by you" if -r -w -o;
}
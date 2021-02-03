#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Write a program that works like mv, renaming the first commandline 
# argument to the second commandline argument. (You don’t need to 
# handle any of the options of mv or additional arguments.) Remember
# to allow for the destina‐ tion to be a directory; if it is, use the 
# same original basename in the new directory.

use File::Basename;
use File::Spec;

my($src, $dest) = @ARGV;

if (-d $dest) {
    my $basename = basename $src;
    $dest = File::Spec->catfile($dest, $basename);
}

rename $src, $dest or die "Could not rename $src to $dest: $!\n";
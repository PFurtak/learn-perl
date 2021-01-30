#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Write a program that makes a modified copy of a text file. 
# In the copy, every string Fred (case-insensitive) should be 
# replaced with Larry. (So, Manfred Mann should become ManLarry 
# Mann.) The input file name should be given on the command line
# (don’t ask the user!), and the output filename should be the 
# corresponding file name ending with .out.

# my $in_text_file = $ARGV[0];
# if (! defined $in_text_file) {
#     die "Please provide a text file to alter."
# }

# my $out_text_file = $in_text_file;
# $out_text_file =~ s/(\.\w+)?$/.out/;

# open my $in_fh, '<', $in_text_file or die "Could not open $in_text_file: $!";

# open my $out_fh, '>', $out_text_file or die "Could not open $out_text_file: $!";

# while (<$in_fh>) {
#     s/fred/Larry/gi;
#     print $out_fh $_;
# }

# Modify the previous program to change every Fred to Wilma
# and every Wilma to Fred. Now input like fred&wilma should look
# like Wilma&Fred in the output.

while (<>) {
    chomp;
    s/fred/\n/gi;
    s/wilma/Fred/gi;
    s/\n/Wilma/gi;
    print "$_\n"
}
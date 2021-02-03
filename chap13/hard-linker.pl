#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# If your operating system supports it, write a program
# that works like ln, making a hard link from the first
# command-line argument to the second. (You don’t need
# to handle options of ln or more arguments.) If your 
# system doesn’t have hard links, just print out a message
# telling which operation you would perform if it were 
# available. Hint: this program has something in common
# with the previous one—recognizing that could save you
# time in coding.

# use File::Spec;
# use File::Basename;

# my($src, $dest) = @ARGV;

# if (-d $dest) {
#     my $basename = basename $src;
#     $dest = File::Spec->catfile($dest, $basename);
# }

# link $src, $dest or die "Unable to create a link between $src and $dest: $!\n";

# If your operating system supports it, fix up the program 
# from the previous exercise to allow an optional -s switch
# before the other arguments to indicate that you want to
# make a soft link instead of a hard link.

use File::Basename;
use File::Spec;

my $symlink = $ARGV[0] eq '-s';
shift @ARGV if $symlink;

my($src, $dest) = @ARGV;
if (-d $dest) {
    my $basename = basename $src;
    $dest = File::Spec->catfile($dest, $basename);
}

if ($symlink) {
    symlink $src, $dest or die "Cant create a soft-link between $src and $dest: $!\n";
} else {
    link $src, $dest or die "Cant create a hard-link between $src and $dest: $!\n";
}


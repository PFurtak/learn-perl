#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;
use Cwd;

# Write a program to ask the user for a directory name, then 
# change to that directory. If the user enters a line with 
# nothing but whitespace, change to his or her home directory
# as a default. After changing, list the ordinary directory 
# contents (not the items whose names begin with a dot) in
# alphabetical order. (Hint: will that be easier to do with
# a directory handle or with a glob?) If the directory change
# doesn’t succeed, just alert the user—but don’t try showing the contents.

# Modify the program to include all files, not just the ones that don’t begin with a dot.

# say "current directory is: ", getcwd();
# say "What directory would you like to navigate to?";
# chomp(my $dir = <STDIN>);

# if ($dir =~ /\A\s*\z/) {
#     chdir or die "Cannot chdir to your home directory. $!\n";
# } else {
#     chdir $dir or die "Cannot chdir to $dir. $!\n";
# }

# say "current directory is: ", getcwd();

# my @files = <.* *>;
# foreach (@files) {
#     print "$_\n";
# }

# If you used a directory handle for the previous exercise, rewrite it to use a glob.
# Or if you used a glob, try it now with a directory handle.

say "current directory is: ", getcwd();
say "What directory would you like to navigate to?";
chomp(my $dir = <STDIN>);

if ($dir =~ /\A\s*\z/) {
    chdir or die "Cannot chdir to your home directory. $!\n";
} else {
    chdir $dir or die "Cannot chdir to $dir. $!\n";
}

say "current directory is: ", getcwd();

opendir DOT, "." or die "Cannot open dot : $!";
foreach (sort readdir DOT) {
    next if /\A\./;
    print "$_\n";
}

closedir DOT;
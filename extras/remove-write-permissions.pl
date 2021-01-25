#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

#test

# Write a program that when provided file paths,
# the program recursively traverses directories,
# finds files with write permissions, and then removes
# said write permissions.

# IMPORTANT: I found some literature on the topic at https://perlmaven.com/recursive-subroutines
# and they recommend using a module called Path::Iterator::Rule

# Also found this module that looks to solve most
# of this problem: https://metacpan.org/pod/distribution/PerlPowerTools/bin/chmod

my $path = shift || '.';

traverse($path);

sub traverse {
    my ($input) = @_;
    
    return if not -d $input;
    opendir my $dh, $input or die;

    while (my $sub = readdir $dh) {
        next if $sub eq '.' or $sub eq '..';
        printf "%s/%s\n", $input, $sub;
        my $file = $input."/$sub";

        if (-e $file && -f _ && -w _) {
            say "File $file is writable.";
            chmod 0555, $file;
            say "File $file has been changed to read and execute for all users";
        }

    }
    close $dh;
    return;
}



#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Make a program that reads a list of strings from a file, one string per line,
# and then lets the user interactively enter patterns that may match some of the
# strings. For each pattern, the program should tell how many strings from the 
# file matched, then which ones those were. Don’t reread the file for each new 
# pattern; keep the strings in memory. The filename may be hardcoded in the file.
# If a pat‐ tern is invalid (for example, if it has unmatched parentheses), the 
# program should simply report that error and let the user continue trying patterns.
# When the user enters a blank line instead of a pattern, the program should quit.

my $filename = './cthulhu.txt';

open my $fh, '<', $filename or die "Cannot open '$filename': $!";
chomp(my @lines = <$fh>);

while (1) {
    print "Please enter a pattern: ";
    chomp(my $pattern = <STDIN>);
    last if $pattern =~ /\A\s*\Z/;

    my @matches = eval {
        grep /$pattern/, @lines;
    };

    if ($@) {
        print "Error: $@";
    } else {
        my $count = @matches;
        print "There were $count matches:\n", map "$_\n", @matches;
    }
    
    print "\n";
}
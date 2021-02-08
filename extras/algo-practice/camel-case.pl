#!/usr/bin/perl
use v5.10;
use strict;
use warnings;

# Given a sequence of concatenated words in camel case as a string,
# determine the number of words in the string. 

# Example 
# s = oneTwoThree
# There are three words in the string:
# one, Two, Three

    my $s = 'oneTwoThree';
    my $s2 = 'aQuickBrownFoxJumpedOverLazyDog';
    my $s3 = 'headphonesBeatEarbuds';
    my $s4 = 'tampabayWonTheSuperBowl';

sub count_words {
    my $string = shift;
    my $count = 1;

    while ($string =~ m/\p{Uppercase}/g) {
        $count++;
    }

    say "$string : $count";
}

count_words($s);
count_words($s2);
count_words($s3);
count_words($s4);

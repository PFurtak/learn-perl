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
    foreach my $string (@_) {
       my $count = 1;

       while ($string =~ m/\p{Uppercase}/g) {
        $count++;
      }
    say "$string : $count";
  }
}

count_words($s, $s2, $s3, $s4);

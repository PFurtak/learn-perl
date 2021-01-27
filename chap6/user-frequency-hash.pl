#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Write a program that reads a series of words (with one word per line)
# until end-of-input, then prints a summary of how many times each word 
# was seen. (Hint: remember that when an undefined value is used as if 
# it were a number, Perl automatically converts it to 0. It may help to 
# look back at the earlier exercise that kept a running total.) So, if 
# the input words were fred, barney, fred, dino, wilma, fred (all on separate lines),
# the output should tell us that fred was seen 3 times. For extra credit,
# sort the summary words in code point order in the out‐ put.

my(@words, %count, $word);
say "Provide a list of words and you will see a count of how many times you have input those words";
chomp(@words = <STDIN>);

foreach $word (@words) {
    $count{$word} += 1;
}

foreach $word (sort keys %count) {
    print "$word was seen $count{$word} times.\n"
}
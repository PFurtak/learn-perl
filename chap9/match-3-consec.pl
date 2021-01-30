#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Make a pattern that will match three consecutive copies of whatever is 
# currently contained in $what. That is, if $what is fred, your pattern 
# should match fredfredfred. If $what is fred|barney, your pattern should 
# match fredfredbarney or barneyfredfred or barneybarneybarney or many other
# variations. (Hint: you should set $what at the top of the pattern test program
# with a statement like my $what = 'fred|barney';.)

my $what = "fred|barney";

my $str_1 = "fredfredfred";
my $str_2 = "barneybarneybarney";
my $str_3 = "fredfredbarney";
my $str_4 = "barneyfredfred";
my $str_5 = "wilmabarneyfred";

if ($str_1 =~ /($what){3}/i) {
    print "\$str_1: $str_1 is a match!\n";
} else {
    print "\$str_1: $str_1 did not match...\n";
}

if ($str_2 =~ /($what){3}/i) {
    print "\$str_2: $str_2 is a match!\n";
} else {
    print "\$str_2: $str_2 did not match...\n";
}

if ($str_3 =~ /($what){3}/i) {
    print "\$str_3: $str_3 is a match!\n";
} else {
    print "\$str_3: $str_3 did not match...\n";
}

if ($str_4 =~ /($what){3}/i) {
    print "\$str_4: $str_4 is a match!\n";
} else {
    print "\$str_4: $str_4 did not match...\n";
}

if ($str_5 =~ /($what){3}/i) {
    print "\$str_5: $str_5 is a match!\n";
} else {
    print "\$str_5: $str_5 did not match...\n";
}
#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

sub greet_all {
    state @names;
    my $name = shift;

    print "Hi $name! ";

    if (@names) {
        print "I've also seen @names.\n"
    } else {
        print "You are the first one here.\n"
    }
    push(@names, $name);
}

&greet_all("Bill");
&greet_all("Todd");
&greet_all("Tim");
&greet_all("Earl");
&greet_all("Frank");
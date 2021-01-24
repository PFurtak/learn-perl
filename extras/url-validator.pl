#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Write a program that validates a proper ssh or web url,
# including search query params.

say "Please provide a list a urls to validate: ";

chomp(@links = <STDIN>);

say "VALIDATOR:";

foreach (@links) {
    if ($_ =~ /\A(https?|ssh):\/\/[a-z0-9-]+(\.[a-z0-9-]+)+([\/?].*)?\Z/) {
        say "$_ is valid.";
    } else {
        say "$_ is not valid.";
    }
}
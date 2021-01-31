#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Write a program to add a copyright statement right after the shebang line of a file.

$^I = ".bak";

while (<>) {
    if (/\A#!/) {
        $_ .= "## Copyright (C) 20XX by Yours Truly\n";
    }
    print;
}
#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Write a program that changes to some particular (hardcoded)
# directory, like the system’s root directory, then executes
# the ls -l command to get a long-format directory listing
# in that directory.

# Modify the previous program to send the output of the command
# to a file called ls.out in the current directory. The error
# output should go to a file called ls.err

open STDOUT, '>', 'ls.out' or die "Could not write to ls.out: $!";
open STDERR, '>', 'ls.err' or die "Could not write to ls.err: $!";
chdir '/' or die "Cannot change to root directory. $!";
exec 'ls', '-l' or die "Cannot execute ls: $!";
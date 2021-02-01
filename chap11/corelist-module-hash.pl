#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Install the Module::CoreList module from CPAN. Print a list
# of all of the modules that came with v5.24.

use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.024} };

print join "\n", keys %modules;

#!/usr/bin/perl
use v5.10;
use warnings;
use diagnostics;

# Write a subroutine named greet that welcomes the person 
# you name by telling them the name of the last person it greeted.

sub greet {
   state $last_person;
   my $name = shift;

   print "Hi $name! ";

   if (defined $last_person) {
       print "$last_person is also here!\n"
   } else {
       print "You are the first one here!\n"
   }
    $last_person = $name;
}

&greet("Fred");
&greet("Barney");
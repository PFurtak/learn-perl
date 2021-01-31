#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Make a program that will repeatedly ask the user to guess 
# a secret number from 1 to 100 until the user guesses the 
# secret number. Your program should pick the number at random 
# by using the magical formula int(1 + rand 100). See what the 
# perlfunc documentation says about int and rand if you’re 
# curious about these functions. When the user guesses wrong, 
# the program should respond, “Too high” or “Too low.” If the 
# user enters the word quit or exit, or if the user enters a blank
# line, the program should quit. Of course, if the user guesses 
# correctly, the program should quit then as well!

# Modify the program from the previous exercise to print extra debugging
# information as it goes along, such as the secret number it chose. 
# Make your change such that you can turn it off, but your program
# emits no warnings if you turn it off. If you are using Perl 5.10 
# or later, use the // operator. Otherwise, use the conditional operator.

my $Debug = $ENV{DEBUG} // 1;

my $lucky_number = int(1 + rand 100);
my $guess = 0;

say "[DEBUG]: lucky number is $lucky_number" if $Debug;

say "Guess the lucky number. The lucky number is between 1-100.";

while ($guess != $lucky_number) {
    chomp($guess = <STDIN>);

    if ($guess =~ /exit|quit|\A\s*\Z/i) {
        say "You have ended the game. The lucky number was $lucky_number.";
        last;
    }

    if ($guess == $lucky_number) {
       say "Congratualations! $guess was the lucky number!";
       last;
    }

    if ($guess > $lucky_number) {
        say "$guess was too high, try again.";
    } else {
        say "$guess was too low, try again.";
    }
}
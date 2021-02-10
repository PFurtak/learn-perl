#!/usr/bin/perl
use strict;
use v5.10;
use diagnostics;
use warnings;

# say "Please provide the first number to add.";
# chomp(my $num1 = <STDIN>);
# if ($num1 =~ /(:?\D)|(\A\s*\z)/g) {die "Please provide a numeric, ie. 5"};

# say "Please provide a number to add to the first number.";
# chomp(my $num2 = <STDIN>);
# if ($num2 =~ /(:?\D)|(\A\s*\z)/g) {die "Please provide a numeric, ie. 5"};

# sub add {
#     my ($first_num, $second_num) = @_;
#     my $sum = $first_num + $second_num;

#     say "Answer is $sum";
# }

# add($num1, $num2);

# Reading stdin stream and out putting a running tally 
while (<>) {
    say "Please provide a number you would like to accumulate. Press control+D to end the program.";
    my $num = $_;
    state $sum;

    if (chomp($num) =~ /(:?\D)|\A\s*\z/g) {die "Please provide a numeric, ie. 5"};

    $sum += $num;
    say "running tally: $sum";
}

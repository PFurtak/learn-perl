#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Make a program that prints each line of its input that mentions fred.
# (It shouldn’t do anything for other lines of input.) Does it match 
# if your input string is Fred, frederick, or Alfred? Make a small 
# text file with a few lines mentioning “fred flintstone” and his friends,
# then use that file as input to this program and the ones later in this section.

# chomp(my @lines = <>);

# foreach (@lines) {
#     if (/fred/) {
#         print "$_\n";
#     }
# }

# Modify the previous program to allow Fred to match as well. Does it match 
# now if your input string is Fred, frederick, or Alfred? 
# (Add lines with these names to the text file.)

# chomp(my @lines = <>);

# foreach (@lines) {
#     state $index = 1;
#     if (/F|fred/) {
#         print "Match $index:\t$_\n";
#         $index += 1;
#     }
# }

# Make a program that prints each line of its input that contains a period (.),
# ignoring other lines of input. Try it on the small text file from the previous
# exercise: does it notice Mr. Slate?

# chomp(my @lines = <>);

# foreach (@lines) {
#     state $index = 1;
#     if (/\./) {
#         print "Match $index:\t$_\n";
#         $index++;
#     }
# }

# Make a program that prints each line that has a word that is capitalized but 
# not ALL capitalized. Does it match Fred but neither fred nor FRED?

# chomp(my @lines = <>);

# foreach (@lines) {
#     state $index = 1;
#     if (/[A-Z][a-z]/) {
#         print "Match $index:\t$_\n";
#         $index++;
#     }
# }

# Make a program that prints each line that has two of the same non-whitespace
# characters next to each other. It should match lines that contain words such 
# as Mississippi, Bamm-Bamm, or llama.

# chomp(my @lines = <>);

# foreach (@lines) {
#     state $index = 1;
#     if (/(.)\1/) {
#         print "Match $index:\t$_\n";
#         $index++;
#     }
# }

# Extra credit exercise: write a program that prints out any input 
# line that mentions both wilma and fred.

chomp(my @lines = <>);

foreach (@lines) {
    state $index = 1;
    if (/W|wilma/ && /F|fred/) {
        print "Match $index:\t$_\n";
        $index++;
    }
}
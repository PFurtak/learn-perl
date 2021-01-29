#!/usr/bin/perl
use v5.10;
use strict;
use warnings;
use diagnostics;

# Using the pattern test program, make a pattern that matches if 
# any word (in the \w sense of word) ends with the letter a. 
# Does it match wilma but not barney? Does it match Mrs. Wilma Flintstone? 
# What about wilma&fred? Try it on the sample text file from the Exercises 
# in Chapter 7 (and add these test strings if they weren’t already in there).

# chomp(my @lines = <>);

# foreach (@lines) {
#     chomp;
#     if (/a\b/i) {
#         print "Matched: |$`<$&>$'|\n";
#     } else {
#         print "No match: |$_|\n";
#     }
# }

# Modify the program from the previous exercise so that the word ending with the 
# letter a is captured into $1. Update the code to display that variable’s contents 
# in single quotes, something like $1 contains 'Wilma'.

# chomp(my @lines = <>);

# foreach (@lines) {
#     chomp;
#     if (/((\w+)a\b)/i) {
#         print "Matched: \$1 contains: '$1'\n";
#     } else {
#         print "No match: |$_|\n";
#     }
# }

# Modify the program from the previous exercise to use named captures instead 
# of relying on $1. Update the code to display that label name, something like
# 'word' contains 'Wilma'.

# chomp(my @lines = <>);

# foreach (@lines) {
#     chomp;
#     if (/(?<word>(\w+)a\b)/i) {
#         print "Matched: \$+{word} contains: '$+{word}'\n";
#     } else {
#         print "No match: |$_|\n";
#     }
# }

# Extra credit exercise: modify the program from the previous exercise so that
# immediately following the word ending in a it will also capture up-to-five 
# characters (if there are that many characters, of course) in a separate capture variable.
# Update the code to display both capture variables. For example, if the input string says 
# I saw Wilma yesterday, the up-to-five characters are “ yest” (with the leading space).
# If the input is I, Wilma!, the extra capture should have just one character. 
# Does your pattern still match just plain wilma?

chomp(my @lines = <>);

foreach (@lines) {
    chomp;
    if (m!
        (\b\w*a\b)
        (.{0,5})
    !xs) {
        print "Matched: \$1 contains: '$1'\n";
        print "Matched: \$2 contains up to next 5 chars: $2\n";
    } else {
        print "No match: |$_|\n";
    }
}
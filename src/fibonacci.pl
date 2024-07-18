#!/usr/bin/perl
use strict;
use warnings;

print "Welcome to the Fibonacci series generator!\n";
print "Please enter the number of terms you would like to generate: ";
my $num_terms = <STDIN>;
chomp $num_terms;

my $first = 0;

if ($num_terms == 0) {
    print "No terms to generate.\n";
} elsif ($num_terms == 1) {
    print "The Fibonacci series is: $first\n";
} else {
    my $second = 1;
    print "The Fibonacci series is: $first, $second";
    for (my $i = 2; $i < $num_terms; $i++) {
        my $next = $first + $second;
        print ", $next";
        $first = $second;
        $second = $next;
    }
    print "\n";
}
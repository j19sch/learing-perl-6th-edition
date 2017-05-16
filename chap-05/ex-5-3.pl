#!/usr/bin/perl

use utf8;
use warnings;
use strict;


print "Please enter a justification and then a number of strings on separate lines.\n";

chomp(my @input = <STDIN>);

my $justify = shift @input;

my $ruler_reps = 3;

if ($justify > 30) {
	$ruler_reps = ($justify/10) + 1;
}

print "1234567890" x $ruler_reps, "\n";
foreach (@input) {
	printf "%${justify}s\n", "$_";
}

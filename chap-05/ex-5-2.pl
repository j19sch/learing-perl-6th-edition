#!/usr/bin/perl

use utf8;
use warnings;
use strict;


print "Please enter a number of strings on separate lines.\n";

chomp(my @input = <STDIN>);

print "1234567890" x 8, "\n";
foreach (@input) {
	printf "%20s\n", "$_";
}

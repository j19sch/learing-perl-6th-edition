#!/usr/bin/perl

use utf8;
use warnings;


print "Give me a list of strings and I will return them sorted.\n";
chomp(@lines = <STDIN>);

print "\nHere you go:\n";
@sorted = sort @lines;
print "@sorted\n";

foreach (@sorted) {
	print "$_\n";
}

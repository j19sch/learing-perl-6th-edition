#!/usr/bin/perl

use utf8;
use warnings;

@people = qw(fred betty barney dino wilma pebbles bamm-bamm);

print "Please give me the list of numbers of the people whose name you want.\n";
@lines = <STDIN>;

foreach $line (@lines) {
	print $people[$line - 1] . "\n";
}

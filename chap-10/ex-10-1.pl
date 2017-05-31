#!/usr/bin/perl

use utf8;
use warnings;
use strict;

my $the_number = int(1+ rand 100);

print "Guess the number!\n";

while (1) {
	chomp (my $guess = <STDIN>);
	if ($guess =~ /quit|exit|\A\s*\z/) {
		print "bye bye!\n";
		last;
	} elsif ($guess < $the_number) {
		print "Too low!\n";
	} elsif ($guess > $the_number) {
		print "Too high!\n";
	} elsif ($guess = $the_number) {
		print "You got it, good job!\n";
		last;
	} else {
		print "Pardon?\n";
	}
}

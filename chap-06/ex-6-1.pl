#!/usr/bin/perl

use utf8;
use warnings;
use strict;

my %lastname = (
	fred => "flinstone",
	barney => "rubble",
	wilma => "flinstone",
);

print "give name? ";
chomp(my $given_name = <STDIN>);

if (exists $lastname{$given_name}) {
	print "family name: $lastname{$given_name}\n";
} else {
	print "Sorry, I don't know this person.\n";
}

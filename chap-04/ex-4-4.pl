#!/usr/bin/perl

use utf8;
use warnings;
use strict;

use 5.022;

sub greet {
	my $name = shift(@_);

	state $last_person;

	print "Hi $name! ";

	if (defined $last_person) {
		print "$last_person is also here!\n";
	} else {
		print "You are the first one here!\n";
	}

	$last_person = $name;
}

&greet( "Fred" );
&greet( "Barney" );
&greet( "Wilma" );

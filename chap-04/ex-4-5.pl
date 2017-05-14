#!/usr/bin/perl

use utf8;
use warnings;
use strict;

use 5.022;

sub greet {
	my $name = shift(@_);

	state @present_people;

	print "Hi $name! ";

	if (@present_people) {
		print "I've alo seen: @present_people.\n";
	} else {
		print "You are the first one here!\n";
	}

	push(@present_people, $name);	
}

&greet( "Fred" );
&greet( "Barney" );
&greet( "Wilma" );
&greet( "Betty" );

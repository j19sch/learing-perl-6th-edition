#!/usr/bin/perl

use utf8;
use warnings;
use strict;

while (<>) {
	chomp;
	if (/\b(\w*a)\b/) {
		print "Matched: |$`<$&>$'|\n";
		print "\$1 contains $1.\n";
	} else {
		print "No match: |$_|\n";
	}
}


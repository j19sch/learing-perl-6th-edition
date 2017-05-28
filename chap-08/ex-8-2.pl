#!/usr/bin/perl

use utf8;
use warnings;
use strict;

while (<>) {
	chomp;
	if (/a\b/) {
		print "Matched: |$`<$&>$'|\n";
	} else {
		print "No match: |$_|\n";
	}
}


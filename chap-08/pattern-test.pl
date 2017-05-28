#!/usr/bin/perl

use utf8;
use warnings;
use strict;

while (<>) {
	chomp;
	if (/YOUR_PATTERN_GOES_HERE/) {
		print "Matched: |$`<$&>$'|\n";
	} else {
		print "No match: |$_|\n";
	}
}


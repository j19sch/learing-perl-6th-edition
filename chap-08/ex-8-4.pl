#!/usr/bin/perl

use utf8;
use warnings;
use strict;

while (<>) {
	chomp;
	if (/\b(?<word>\w*a)\b/) {
		print "Matched: |$`<$&>$'|\n";
		print "\$+\{word\} contains $+{word}.\n";
	} else {
		print "No match: |$_|\n";
	}
}

